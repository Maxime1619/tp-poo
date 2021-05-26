##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=pcfled-test
ConfigurationName      :=Debug
WorkspacePath          :=/home/maxime/tp-poo-2.0
ProjectPath            :=/home/maxime/tp-poo-2.0/pcfled-test
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=maxime
Date                   :=05/26/21
CodeLitePath           :=/home/maxime/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="pcfled-test.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := $(shell pkg-config --libs piduino) $(shell pkg-config --libs UnitTest++) 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)$(WorkspacePath)/src $(IncludeSwitch)$(WorkspacePath)/poo-toolbox/src $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS := -std=c++14 $(shell pkg-config --cflags piduino) $(shell pkg-config --cflags UnitTest++) -g -O0 -Wall $(Preprocessors)
CFLAGS   := -std=c99 $(shell pkg-config --cflags piduino) -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_PcfLed.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/pcfled-test/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/up_src_PcfLed.cpp$(ObjectSuffix): ../src/PcfLed.cpp $(IntermediateDirectory)/up_src_PcfLed.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/src/PcfLed.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_PcfLed.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_PcfLed.cpp$(DependSuffix): ../src/PcfLed.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_PcfLed.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_PcfLed.cpp$(DependSuffix) -MM ../src/PcfLed.cpp

$(IntermediateDirectory)/up_src_PcfLed.cpp$(PreprocessSuffix): ../src/PcfLed.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_PcfLed.cpp$(PreprocessSuffix) ../src/PcfLed.cpp

$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(ObjectSuffix): ../poo-toolbox/src/pcf8574.cpp $(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/poo-toolbox/src/pcf8574.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(DependSuffix): ../poo-toolbox/src/pcf8574.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(DependSuffix) -MM ../poo-toolbox/src/pcf8574.cpp

$(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(PreprocessSuffix): ../poo-toolbox/src/pcf8574.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_poo-toolbox_src_pcf8574.cpp$(PreprocessSuffix) ../poo-toolbox/src/pcf8574.cpp

$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(ObjectSuffix): ../poo-toolbox/src/twowiredevice.cpp $(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/poo-toolbox/src/twowiredevice.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(DependSuffix): ../poo-toolbox/src/twowiredevice.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(DependSuffix) -MM ../poo-toolbox/src/twowiredevice.cpp

$(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(PreprocessSuffix): ../poo-toolbox/src/twowiredevice.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_poo-toolbox_src_twowiredevice.cpp$(PreprocessSuffix) ../poo-toolbox/src/twowiredevice.cpp

$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix): ../src/Led.cpp $(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/src/Led.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix): ../src/Led.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix) -MM ../src/Led.cpp

$(IntermediateDirectory)/up_src_Led.cpp$(PreprocessSuffix): ../src/Led.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_Led.cpp$(PreprocessSuffix) ../src/Led.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


