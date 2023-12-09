@REM utility batch file to render the tex file to a pdf

@REM build the docker image with all tex dependencies
docker build -t bpimg -f docker/Dockerfile .

@REM build the proposal
docker run --rm -v "C:\Users\Lander\Documents\HoGent\3de Jaar\BP\latex-hogent-bachproef-LanderDeKesel:/bp" bpimg sh /bp/docker/render_thesis.sh poster

@REM keep window open after run
pause