#!/usr/bin/env bash
#───────────────────────────────────────────────────────────────
#   ⚡ DYNAMIC RENAME PACKER v6.3 ULTIMATE ⚡
#   Developer : @DynamicOwner
#───────────────────────────────────────────────────────────────
set -o pipefail
ESC=$'\033'
BOLD="${ESC}[1m"; DIM="${ESC}[2m"; RESET="${ESC}[0m"
WHITE="${ESC}[38;5;231m"; GRAY="${ESC}[38;5;245m"
RED="${ESC}[38;5;196m"; ORANGE="${ESC}[38;5;208m"; YELLOW="${ESC}[38;5;226m"
GREEN="${ESC}[38;5;46m"; MINT="${ESC}[38;5;51m"; CYAN="${ESC}[38;5;87m"
SKY="${ESC}[38;5;123m"; PURPLE="${ESC}[38;5;171m"; MAGENTA="${ESC}[38;5;201m"
PINK="${ESC}[38;5;207m"
BG_PURPLE="${ESC}[48;5;99m"; BG_BLUE="${ESC}[48;5;25m"; BG_DARK="${ESC}[48;5;235m"
G1="${ESC}[38;5;201m"; G2="${ESC}[38;5;171m"; G3="${ESC}[38;5;141m"
G4="${ESC}[38;5;105m"; G5="${ESC}[38;5;75m"; G6="${ESC}[38;5;87m"; G7="${ESC}[38;5;46m"

# ⚡ TURBO FAST DELAYS
D1=0; D2=0.0005; D3=0.001

# ─────────── BOX WIDTH (Perfect for Mobile) ───────────
W=32; TOTAL_W=34

# ─────────── HELPERS ───────────
strip_ansi() { echo -e "$1" | sed "s/\x1b\[[0-9;]*[mK]//g"; }
shorten() { local s="$1"; if [ ${#s} -gt 28 ]; then echo "...${s: -25}"; else echo "$s"; fi; }

type_text() {
  local t="$1" d="${2:-$D2}"
  for ((i=0;i<${#t};i++)); do printf "%s" "${t:$i:1}"; sleep "$d"; done
  printf "\n"
}
center_text() {
  local t="$1"; local clean=$(strip_ansi "$t"); local l=${#clean}
  local p=$(( (TOTAL_W - l) / 2 )); (( p < 0 )) && p=0
  printf "%*s%b\n" "$p" "" "$t"
}
spinner() {
  local msg="$1" pid=$2
  local f=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
  local c=("$G1" "$G2" "$G3" "$G4" "$G5" "$G6" "$G7") i=0
  while kill -0 "$pid" 2>/dev/null; do
    printf "\r  %b%s%b  %b%s%b " "${c[$((i%7))]}" "${f[$((i%10))]}" "$RESET" "$SKY" "$msg" "$RESET"
    sleep 0.01; ((i++))
  done
  printf "\r  %b✔%b  %b%s%b  \n" "$GREEN" "$RESET" "$MINT" "$msg" "$RESET"
}
progress_bar() {
  local p="$1"; (( p < 0 )) && p=0; (( p > 100 )) && p=100
  local filled=$(( p * 16 / 100 )); local empty=$(( 16 - filled ))
  printf "\r  %b[" "$G6"
  for ((i=0;i<filled;i++)); do printf "█"; done
  for ((i=0;i<empty;i++)); do printf "░"; done
  printf "] %3d%%%b" "$p" "$RESET"
}
line_top() { local c="${1:-$PURPLE}"; printf "%b┌" "$c"; for ((i=0;i<W;i++)); do printf "─"; done; printf "┐%b\n" "$RESET"; }
line_mid() { local c="${1:-$PURPLE}"; printf "%b├" "$c"; for ((i=0;i<W;i++)); do printf "─"; done; printf "┤%b\n" "$RESET"; }
line_bot() { local c="${1:-$PURPLE}"; printf "%b└" "$c"; for ((i=0;i<W;i++)); do printf "─"; done; printf "┘%b\n" "$RESET"; }
line_text() {
  local c="${1:-$PURPLE}" raw="$2"
  local clean=$(strip_ansi "$raw"); local len=${#clean}
  local pad=$(( W - len )); (( pad < 0 )) && pad=0
  printf "%b│%b %b" "$c" "$RESET" "$raw"
  for ((i=0; i<pad; i++)); do printf " "; done
  printf " %b│%b\n" "$c" "$RESET"
}
line_center() {
  local c="${1:-$PURPLE}" raw="$2"
  local clean=$(strip_ansi "$raw"); local len=${#clean}
  local lpad=$(( (W - len) / 2 )); local rpad=$(( W - len - lpad ))
  (( lpad < 0 )) && lpad=0; (( rpad < 0 )) && rpad=0
  printf "%b│%b " "$c" "$RESET"
  for ((i=0; i<lpad; i++)); do printf " "; done
  printf "%b" "$raw"
  for ((i=0; i<rpad; i++)); do printf " "; done
  printf " %b│%b\n" "$c" "$RESET"
}

# ─────────── ULTIMATE AUTO EXIT ───────────
cleanup() {
  trap - EXIT INT TERM
  printf "\n  %b⚡ Closing terminal...%b\n" "$YELLOW" "$RESET"
  stty sane 2>/dev/null
  sleep 0.4
  am broadcast -a com.itsaky.androidide.CLOSE_TERMINAL >/dev/null 2>&1
  am broadcast -a com.termux.app.closesession >/dev/null 2>&1
  printf '\004' > /dev/tty 2>/dev/null
  kill -9 $PPID 2>/dev/null
  ( sleep 0.3; kill -9 $PPID 2>/dev/null ) & disown 2>/dev/null
  sleep 0.2; exit 0
}
trap cleanup EXIT INT TERM

# ─────────── INTRO ───────────
clear; printf "\n"
center_text "${BOLD}${MAGENTA}⚡ DYNAMIC RENAME PACKER ⚡${RESET}"
center_text "${GRAY}Ultimate • v6.3 • VIP Edition${RESET}"
center_text "${GREEN}Developer : @DynamicOwner${RESET}"
printf "\n"
printf "  %b" "$G6"; for ((i=0;i<W;i++)); do printf "━"; done; printf "%b\n\n" "$RESET"
type_text "  ${G1}◆${RESET} ${WHITE}Android & Kotlin renamer${RESET}" 0.001
type_text "  ${G2}◆${RESET} ${WHITE}Smart directory restructuring${RESET}" 0.001
type_text "  ${G3}◆${RESET} ${WHITE}Auto Gradle applicationId sync${RESET}" 0.001
printf "\n"
( sleep 0.1 ) & spinner "Booting" $!
clear

# ─────────── HEADER ───────────
printf "\n"
line_top "$G1"
line_center "$G1" "${BG_PURPLE}${WHITE}${BOLD} 🚀 DYNAMIC RENAME PACKER 🚀 ${RESET}"
line_mid "$G2"
line_text "$G2" "$(printf "%b  Tool :%b %b%s%b" "$GRAY" "$RESET" "$PINK" "Dynamic Rename" "$RESET")"
line_text "$G2" "$(printf "%b  Dev  :%b %b%s%b" "$GRAY" "$RESET" "$CYAN" "@DynamicOwner" "$RESET")"
line_text "$G2" "$(printf "%b  Ver  :%b %b%s%b" "$GRAY" "$RESET" "$YELLOW" "v6.3 Ultimate" "$RESET")"
line_bot "$G3"; printf "\n"

# ─────────── STEP 1 ───────────
line_top "$G5"
line_center "$G5" "${BG_BLUE}${WHITE}${BOLD} ⚙️  STEP 1 · Configuration ⚙️  ${RESET}"
line_bot "$G5"; printf "\n"

printf "\n  %b📁%b  %bEnter project path%b\n  %b❯%b " "$G6" "$RESET" "$WHITE" "$RESET" "$G6" "$RESET"; read -r PROJECT_DIR
printf "  %b🔸%b  %bEnter OLD package%b\n  %b❯%b " "$G1" "$RESET" "$WHITE" "$RESET" "$G1" "$RESET"; read -r OLD_PKG
printf "  %b🔹%b  %bEnter NEW package%b\n  %b❯%b " "$G3" "$RESET" "$WHITE" "$RESET" "$G3" "$RESET"; read -r NEW_PKG
printf "\n"

if [[ ! -d "$PROJECT_DIR" ]]; then
  printf "  %b✖ ERROR:%b %bInvalid project path!%b\n" "$RED" "$RESET" "$WHITE" "$RESET"; exit 1
fi
printf "  %b✔ Path verified!%b\n\n" "$GREEN" "$RESET"

OLD_PATH="${OLD_PKG//./\/}"; NEW_PATH="${NEW_PKG//./\/}"

# ─────────── CONFIRM ───────────
line_top "$G7"
line_center "$G7" "${WHITE}📋 Confirm Operation${RESET}"
line_mid "$G7"
line_text "$G7" "$(printf "%b  Old :%b %b%s%b" "$GRAY" "$RESET" "$PINK" "$OLD_PKG" "$RESET")"
line_text "$G7" "$(printf "%b  New :%b %b%s%b" "$GRAY" "$RESET" "$MINT" "$NEW_PKG" "$RESET")"
line_bot "$G7"; printf "\n"
printf "  %b❯ Continue?%b [%by%b/%bn%b] " "$YELLOW" "$RESET" "$GREEN" "$RESET" "$RED" "$RESET"; read -r confirm
case "$confirm" in y|Y|yes|YES) ;; *) printf "  %b⚠ Aborted.%b\n" "$RED" "$RESET"; exit 0 ;; esac
printf "\n"

# ─────────── STEP 2 ───────────
line_top "$G1"
line_center "$G1" "${BG_PURPLE}${WHITE}${BOLD} 🔄 STEP 2 · Replacing Refs 🔄 ${RESET}"
line_bot "$G1"; printf "\n"

( sleep 0.3 ) & SP_PID=$!
spinner "Analyzing project" $SP_PID

mapfile -t FILES < <(find "$PROJECT_DIR" -type f \( \
  -name "*.java" -o -name "*.kt" -o -name "*.kts" \
  -o -name "*.xml" -o -name "*.gradle" \) \
  -exec grep -l "$OLD_PKG" {} + 2>/dev/null)

TOTAL=${#FILES[@]}

if [[ $TOTAL -eq 0 ]]; then
  printf "\n  %bℹ No files contain%b %b%s%b\n\n" "$YELLOW" "$RESET" "$PINK" "$OLD_PKG" "$RESET"
else
  printf "\n  %b🎯 Found%b %b%d%b %bfiles matching%b %b%s%b\n\n" \
    "$G6" "$RESET" "$YELLOW" "$TOTAL" "$RESET" "$WHITE" "$RESET" "$PINK" "$OLD_PKG" "$RESET"
fi

UPDATED=0; IDX=0
for file in "${FILES[@]}"; do
  ((IDX++))
  sed -i "s/$OLD_PKG/$NEW_PKG/g" "$file"; ((UPDATED++))
  progress_bar $(( IDX * 100 / TOTAL ))
  printf "  %b✔%b %b%s%b\n" "$GREEN" "$RESET" "$DIM" "$(shorten "${file#$PROJECT_DIR/}")" "$RESET"
done
printf "\n\n  %b✔ Updated%b %b%d%b %bfiles.%b\n\n" "$GREEN" "$RESET" "$MINT" "$UPDATED" "$RESET" "$WHITE" "$RESET"

# ─────────── STEP 3 ───────────
line_top "$G3"
line_center "$G3" "${BG_BLUE}${WHITE}${BOLD} 📦 STEP 3 · Restructuring Dirs 📦 ${RESET}"
line_bot "$G3"; printf "\n"
DIR_COUNT=0
while IFS= read -r srcdir; do
  [[ -z "$srcdir" ]] && continue
  newdir=$(printf "%s" "$srcdir" | sed "s#$OLD_PATH#$NEW_PATH#")
  mkdir -p "$(dirname "$newdir")"; mv "$srcdir" "$newdir" 2>/dev/null; ((DIR_COUNT++))
  printf "  %b📁%b %b%s%b\n" "$MAGENTA" "$RESET" "$DIM" "$(shorten "${srcdir#$PROJECT_DIR/}")" "$RESET"
  printf "     %b↳%b %b%s%b\n" "$G5" "$RESET" "$MINT" "$(shorten "${newdir#$PROJECT_DIR/}")" "$RESET"
done < <(find "$PROJECT_DIR" -type d -path "*/$OLD_PATH" 2>/dev/null)
printf "\n  %b✔ Renamed%b %b%d%b %bdirectories.%b\n\n" "$GREEN" "$RESET" "$MINT" "$DIR_COUNT" "$RESET" "$WHITE" "$RESET"

# ─────────── STEP 4 ───────────
line_top "$G6"
line_center "$G6" "${BG_DARK}${WHITE}${BOLD} 🔧 STEP 4 · Syncing Gradle 🔧 ${RESET}"
line_bot "$G6"; printf "\n"
mapfile -t GF < <(find "$PROJECT_DIR" -type f \( -name "build.gradle" -o -name "build.gradle.kts" \) 2>/dev/null)
GU=0
for g in "${GF[@]}"; do
  if grep -q "$OLD_PKG" "$g" 2>/dev/null; then
    sed -i "s/applicationId[[:space:]]*['\"]$OLD_PKG['\"]/applicationId \"$NEW_PKG\"/g" "$g"; ((GU++))
    printf "  %b✔%b %b%s%b\n" "$GREEN" "$RESET" "$DIM" "$(shorten "${g#$PROJECT_DIR/}")" "$RESET"
  fi
done
[[ $GU -eq 0 ]] && printf "  %bℹ No applicationId found.%b\n" "$YELLOW" "$RESET"
printf "\n"

# ─────────── COMPLETION ───────────
( sleep 0.1 ) & spinner "Finalizing" $!
printf "\n"
line_top "$G7"
line_center "$G7" "${BG_DARK}${GREEN}${BOLD} ✅ PACKAGE RENAME COMPLETED ✅ ${RESET}"
line_mid "$G7"
line_text "$G7" "$(printf "%b  📂 Project:%b" "$GRAY" "$RESET")"
line_text "$G7" "$(printf "%b  %s%b" "$CYAN" "$(shorten "$PROJECT_DIR")" "$RESET")"
line_bot "$G7"; printf "\n"
center_text "${BOLD}${GREEN}🚀 Thank you for choosing DRP! 🚀${RESET}"
printf "\n  %b👨‍💻 [%b@DynamicOwner%b]%b  %b✨ Successfully Completed!%b\n" "$GRAY" "$CYAN" "$GRAY" "$RESET" "$YELLOW" "$RESET"

exit 0
