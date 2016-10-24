FROM gordonbrander/rpi_brain_service_proxy

USER pi
# Get the fixture files for the demobot
RUN cd ~ && git clone http://github.com/gordonbrander/openag_2016_summit_at_sea_fixture.git
CMD ["~/catkin_ws/devel/env.sh", "rosrun", "openag_brain", "main"]
