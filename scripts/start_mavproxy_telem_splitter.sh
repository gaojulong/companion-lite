# this starts mavproxy so that the serial link to the companion computer
# is available to a companion computer and external GCSs via UDP. This broadcasts so that
# multiple IP addresses can receive the telemetry.

# For PixHawk or other connected via USB on Raspberry Pi
cd $HOME
# Determine if the param file exists.  If not, use default.
if [ -e mavproxy.param ]; then
    paramFile="mavproxy.param"
else
    paramFile="companion/params/mavproxy.param.default"
fi

xargs -a $paramFile mavproxy.py