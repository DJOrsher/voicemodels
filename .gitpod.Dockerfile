FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 11.0.12-open && \
    sdk default java 11.0.12-open"

# Android SDK
ENV ANDROID_HOME=/workspace/android-sdk
ENV PATH="${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools"
