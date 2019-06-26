import os
import argparse



parser = argparse.ArgumentParser()
parser.add_argument('-rundir', dest='rundir', help='directory with submitted jobs')
parser.add_argument('--kill', dest='killjobs', help='kill all jobs',action="store_true")

parser.add_argument('--resub', dest='resub', help='resubmit all jobs',action="store_true")
parser.add_argument('--siteblacklist', dest='siteblacklist', help='update blacklist for resubmitting',default='T1_RU_JINR,T3_UK_*,T2_US_Purdue,T2_US_Caltech')
parser.add_argument('--maxjobruntime', dest='maxjobruntime', help='set max runtime in minutes',default="")
parser.add_argument('--maxmemory', dest='maxmemory', help='set max memory in MB',default="")

parser.add_argument('--dry', dest='dryrun', help='print only commands',action="store_true")
args = parser.parse_args()


directory = "{CMSSW_BASE}/src/run/".format(**os.environ)+args.rundir


for dirs in os.listdir(directory) :
	# print dirs
	if args.killjobs :
		killcmd = "crab kill -d {0}{1}".format(directory,dirs)
		print killcmd
		if args.dryrun == False :
			os.system(killcmd)
	if args.resub :
		resubcmd = "crab resubmit -d {0}{1} --siteblacklist={2}".format(directory,dirs,args.siteblacklist)
		if args.maxjobruntime :
			resubcmd += " --maxjobruntime {0}".format(args.maxjobruntime)
		if args.maxmemory :
			resubcmd += " --maxmemory {0}".format(args.maxmemory)
		
		print resubcmd
		if args.dryrun == False :
			os.system(resubcmd)