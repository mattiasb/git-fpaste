#!/bin/bash

# Copyright ⓒ 2015 Mattias Bengtsson
# 
# git-fpaste is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# git-fpaste is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with git-fpaste.  If not, see <http://www.gnu.org/licenses/>.
# 
# Author: Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>

_git_fpaste () {
    local subcommands="am apply diff format-patch"
    local subcommand="$(__git_find_on_cmdline "$subcommands")"
    if [ -z "$subcommand" ]; then
	__gitcomp "$subcommands"
	return
    fi

    case "$subcommand" in
	am)
	    _git_fpaste_am
	    ;;
	apply)
	    _git_fpaste_apply
	    ;;
	diff)
	    _git_diff
	    ;;
        format-patch)
            _git_format_patch
            ;;
	*)
            COMPREPLY=()
            ;;
    esac
}

# I have yet to find out how to make bash completion not fallback to file
# completion when returning an empty COMPREPLY.
# As a workaround return a COMPREPLY with one element: the empty string and
# echo the bel character.
__no_file_fallback ()
{
    echo -en "\a"
    COMPREPLY=( '' )
}

_git_fpaste_am ()
{
    case "$cur" in
        --*)
            _git_am
            ;;
        *)
            __no_file_fallback
            ;;
    esac
}

_git_fpaste_apply ()
{
    case "$cur" in
        --*)
            _git_apply
            ;;
        *)
            __no_file_fallback
            ;;
    esac
}
