"""
	This script builds a release zip of the project it is run in. The release
	script mimics what a Github release zip would like. While not explicitly
	referencing the .gitignore, how this script builds this release is based
	of the Vivado projects .gitignore, which is universal across all Vivado
	projects.

	Author: Andrew Holzer
	Date: 02/09/2017

	Updated:
		03/10/2017: added Debug file to zipped folders/files
		05/12/2017(ArtVVB): added full /local inclusion in /repo
"""

import fnmatch
import glob
import os
import zipfile
from sys import argv


def zip(filename, dirname, projname, abs_src, zf):
	absname = os.path.abspath(os.path.join(dirname, filename))
	arcname = absname[len(abs_src) + 1:]
	zf.write(absname, os.path.join(projname, arcname))
				
def main(dest):
	zf = zipfile.ZipFile("%s-20xx.x-y.zip" % (dest), "w", zipfile.ZIP_DEFLATED)
	abs_src = os.getcwd() # absolute path for the source directory
	projname = dest
	
	if os.path.isdir("hw_handoff"): # zip everything here
		for dirname, subdirs, files in os.walk(os.path.join(abs_src, "hw_handoff")):
			for filename in files:
				zip(filename, dirname, projname, abs_src, zf)
		
	if os.path.isdir("proj"): # Only zip the create_project and cleanup scripts
		files = ["create_project.tcl", "cleanup.sh", "cleanup.cmd"]
		for filename in files:
			if os.path.isfile(os.path.join("proj", filename)):
				zip(filename, "proj", projname, abs_src, zf)
		
	if os.path.isdir("repo"): # cache should be empty (only the .keep), but zip any .xci, .patch and .tcl file
		for dirname, subdirs, files in os.walk(os.path.join(abs_src, "repo")):
			curdir = os.path.basename(dirname)
			if (curdir == "cache"):
				zip(".keep", dirname, projname, abs_src, zf)
				subdirs[:] = [] # just skip everything else in cache
			else:
				for filename in files:
					zip(filename, dirname, projname, abs_src, zf) # keep contents of all other subdirectories (local, vivado-library usually)
		
	if os.path.isdir("sdk"): # system.mss, Makefile, .*project and .hdf files are to be zipped, and specific folders ignored
		for dirname, subdirs, files in os.walk(os.path.join(abs_src, "sdk")):
			curdir = os.path.basename(dirname)
			if (fnmatch.fnmatch(dirname, "*hw_platform*") or fnmatch.fnmatch(dirname, "*_bsp*")):
				for filename in files:
					if (fnmatch.fnmatch(filename, "*.hdf") or fnmatch.fnmatch(filename, ".*project") \
					or fnmatch.fnmatch(filename, "system.mss") or fnmatch.fnmatch(filename, "Makefile")):
						zip(filename, dirname, projname, abs_src, zf)
			elif (fnmatch.fnmatch(curdir, ".metadata") or fnmatch.fnmatch(curdir, "*RemoteSystemsTempFiles")\
			or fnmatch.fnmatch(curdir, "*Release") or fnmatch.fnmatch(curdir, "*webtalk")\
			or fnmatch.fnmatch(curdir, ".sdk")): # if within one of these directories we should just skip out
				subdirs[:] = []
				files[:] = []
			else:
				if fnmatch.fnmatch(curdir, "*Debug"):
					for filename in files:
						if fnmatch.fnmatch(filename, "*.elf*"):
							zip(filename, dirname, projname, abs_src, zf)
				else:
					for filename in files:
						if filename != "SDK.log":
							zip(filename, dirname, projname, abs_src, zf)
						
	if os.path.isdir("src"): # anything in others and bd, .xci and .prj files are top be zipped
		for dirname, subdirs, files in os.walk(os.path.join(abs_src, "src")):
			curdir = os.path.basename(dirname)
			if (curdir == "bd"):
				for bddir, bdsubdir, bdfiles in os.walk(dirname):
					for filename in bdfiles:
						zip(filename, bddir, projname, abs_src, zf)
				subdirs[:] = []
				files[:] = []
			if (curdir == "ip"): # this cannot be the ip dir underneath bd
				for ipdir, ipsubdir, ipfiles in os.walk(dirname):
					if not ipdir == "generated_ip":
						for filename in ipfiles:
							if (fnmatch.fnmatch(filename, "*.xci") or fnmatch.fnmatch(filename, "*.prj") or fnmatch.fnmatch(filename, ".keep")):
								zip(filename, ipdir, projname, abs_src, zf)
				subdirs[:] = []
				files[:] = []
			for filename in files:
				zip(filename, dirname, projname, abs_src, zf)
				
	if os.path.isfile(".gitignore"):
		zip(".gitignore", "", projname, abs_src, zf)
		
	if os.path.isfile(".gitmodules"):
		zip(".gitmodules", "", projname, abs_src, zf)
	
	if os.path.isfile("README.md"):
		zip("README.md", "", projname, abs_src, zf)
		
	zf.close()


os.chdir('..')

if len(argv) == 2:
	zipname = argv[1]
else:
	zipname = os.path.basename(os.getcwd())

main(zipname)
