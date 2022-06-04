#!/bin/bash
source defineRepos.sh
cd ..

#OneLife
git -C OneLife remote add ohol_hetuw $HETUW_CODE_REPO
git -C OneLife remote add thol_hetuw $RISVH_CODE_REPO
git -C OneLife remote add ohol $OHOL_CODE_REPO
git -C OneLife remote add thol $THOL_CODE_REPO
git -C OneLife fetch --all

#OneLifeData7
git -C OneLifeData7 remote add ohol $OHOL_DATA_REPO
git -C OneLifeData7 remote add thol $THOL_DATA_REPO
git -C OneLifeData7 fetch --all

#minorGems
git -C minorGems remote add ohol_hetuw $HETUW_GEMS_REPO
git -C minorGems remote add ohol $OHOL_GEMS_REPO
git -C minorGems remote add thol $THOL_GEMS_REPO
git -C minorGems fetch --all