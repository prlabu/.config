
alias la='ls -la'
alias matlab='/Applications/MATLAB_R2019a.app/bin/matlab -nodesktop -batch $*'
alias s1='cd /Volumes/Sector1/'
alias s2='cd /Volumes/Sector2/'
alias us='cd /Volumes/Sector4/Users'
alias scrcode='cd /Volumes/Sector4/Users/Latane/scrambled-nonsense/code  && open .'
alias figs='cd /Volumes/Sector4/Users/Latane/scrambled-nonsense/figures  && open .'
alias latane='cd /Volumes/Sector4/Users/Latane/ && open .'
alias elecatlas='cd /Volumes/Sector4/Users/Latane/std/data/elec_atlas && open .'
alias tlres='cd /Volumes/Sector4/TandonLab_Resources'
alias oscar='cd /Volumes/Sector4/Users/Oscar'
alias kaldi='cd /Volumes/Sector4/Users/Latane/speech-recognition/kaldi'

alias srcbp='source ~/.bash_profile'
alias editbp='code ~/.bash_profile'

alias newpyenv='python3 -m venv ~/pyenvs/'

/Users/latane/Library/Python/2.7/bin/virtualenvwrapper.sh

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /Users/latane/Library/Python/2.7/bin/virtualenvwrapper.sh

PATH="$PATH:/Users/latane/Library/Python/2.7/bin"

# open file in VSCode - make sure VScode "code" command has been installed
# $ code $file

# Sector 1 Patient
function s1p { 
	# convert argument to lower case for sector 1
	pt="$(tr '[:upper:]' '[:lower:]' <<< "$1")"
	cd /Volumes/Sector1/${1}_lfp_files/
	open .
}

# Sector 1 Patient
function s2p { 
	# convert argument to upper case for sector 2
	pt="$(tr '[:lower:]' '[:upper:]' <<< "$1")"
	cd /Volumes/Sector2/${pt}/
	open .
}

alias latcale='cd /Volumes/Sector4/Users/Cale/lataneXcale && open .'

export MATLAB_SHELL=/bin/tcsh

export MATLABPATH=~/matlab

# KALDI & INTEL MKL lib
export MKL_ROOT=/opt/intel/oneapi/mkl/latest
source /opt/intel/oneapi/setvars.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/latane/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/latane/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/latane/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/latane/Downloads/google-cloud-sdk/completion.bash.inc'; fi
export GOOGLE_APPLICATION_CREDENTIALS="/Users/latane/tndn-291001-00389d0ad1a8.json"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

