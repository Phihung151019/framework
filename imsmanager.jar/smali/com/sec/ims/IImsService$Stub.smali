.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeAudioPath:I = 0x62

.field static final TRANSACTION_changeAudioPathForSlot:I = 0x63

.field static final TRANSACTION_cmcAnswerCall:I = 0x6a

.field static final TRANSACTION_cmcEndCall:I = 0x6b

.field static final TRANSACTION_cmcHoldCall:I = 0x6e

.field static final TRANSACTION_cmcMakeCall:I = 0x69

.field static final TRANSACTION_cmcPullCall:I = 0x6d

.field static final TRANSACTION_cmcRejectCall:I = 0x6c

.field static final TRANSACTION_cmcResumeCall:I = 0x6f

.field static final TRANSACTION_cmcSendDtmf:I = 0x70

.field static final TRANSACTION_cmcStartDtmf:I = 0x71

.field static final TRANSACTION_cmcStopDtmf:I = 0x72

.field static final TRANSACTION_deregisterAdhocProfile:I = 0x24

.field static final TRANSACTION_deregisterAdhocProfileByPhoneId:I = 0x25

.field static final TRANSACTION_deregisterProfile:I = 0x28

.field static final TRANSACTION_deregisterProfileByPhoneId:I = 0x29

.field static final TRANSACTION_dump:I = 0x86

.field static final TRANSACTION_enableRcs:I = 0x58

.field static final TRANSACTION_enableRcsByPhoneId:I = 0x59

.field static final TRANSACTION_enableService:I = 0x54

.field static final TRANSACTION_enableServiceByPhoneId:I = 0x55

.field static final TRANSACTION_enableVoLte:I = 0x56

.field static final TRANSACTION_enableVoLteByPhoneId:I = 0x57

.field static final TRANSACTION_finishDmConfig:I = 0x78

.field static final TRANSACTION_forcedUpdateRegistration:I = 0x2d

.field static final TRANSACTION_forcedUpdateRegistrationByPhoneId:I = 0x2e

.field static final TRANSACTION_getAvailableNetworkType:I = 0xc

.field static final TRANSACTION_getCallCount:I = 0x5a

.field static final TRANSACTION_getCmcCallInfo:I = 0x66

.field static final TRANSACTION_getConfigValues:I = 0x75

.field static final TRANSACTION_getCurrentProfile:I = 0x1f

.field static final TRANSACTION_getCurrentProfileForSlot:I = 0x20

.field static final TRANSACTION_getEpsFbCallCount:I = 0x5b

.field static final TRANSACTION_getGlobalSettingsValueToBoolean:I = 0x85

.field static final TRANSACTION_getGlobalSettingsValueToInteger:I = 0x84

.field static final TRANSACTION_getGlobalSettingsValueToString:I = 0x83

.field static final TRANSACTION_getLastDialogEvent:I = 0x3e

.field static final TRANSACTION_getLastEndedImsCallInfo:I = 0x3f

.field static final TRANSACTION_getMasterStringValue:I = 0x43

.field static final TRANSACTION_getMasterValue:I = 0x42

.field static final TRANSACTION_getNetworkType:I = 0xb

.field static final TRANSACTION_getNrSaCallCount:I = 0x5c

.field static final TRANSACTION_getPhoneCount:I = 0x3

.field static final TRANSACTION_getRcsProfileType:I = 0x21

.field static final TRANSACTION_getRegistrationInfo:I = 0x1c

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x1d

.field static final TRANSACTION_getRegistrationInfoByServiceType:I = 0x1e

.field static final TRANSACTION_getRttMode:I = 0x7c

.field static final TRANSACTION_getVideocallType:I = 0x65

.field static final TRANSACTION_hasCrossSimImsService:I = 0x90

.field static final TRANSACTION_hasVoLteSim:I = 0x52

.field static final TRANSACTION_hasVoLteSimByPhoneId:I = 0x53

.field static final TRANSACTION_isCmcEmergencyCallSupported:I = 0x89

.field static final TRANSACTION_isCmcEmergencyNumber:I = 0x8a

.field static final TRANSACTION_isCmcPotentialEmergencyNumber:I = 0x8b

.field static final TRANSACTION_isCrossSimCallingRegistered:I = 0x8f

.field static final TRANSACTION_isCrossSimCallingSupported:I = 0x92

.field static final TRANSACTION_isCrossSimCallingSupportedByPhoneId:I = 0x91

.field static final TRANSACTION_isCrossSimPermanentBlocked:I = 0x94

.field static final TRANSACTION_isForbidden:I = 0x5d

.field static final TRANSACTION_isForbiddenByPhoneId:I = 0x5e

.field static final TRANSACTION_isImsEnabled:I = 0x46

.field static final TRANSACTION_isImsEnabledByPhoneId:I = 0x47

.field static final TRANSACTION_isNonVerifiedMno:I = 0x50

.field static final TRANSACTION_isQSSSuccessAuthAndLogin:I = 0x32

.field static final TRANSACTION_isRcsEnabled:I = 0x4d

.field static final TRANSACTION_isRegistered:I = 0x1b

.field static final TRANSACTION_isRttCall:I = 0x79

.field static final TRANSACTION_isServiceAvailable:I = 0x4f

.field static final TRANSACTION_isServiceEnabled:I = 0x4e

.field static final TRANSACTION_isServiceEnabledByPhoneId:I = 0x51

.field static final TRANSACTION_isSupportVoWiFiDisable5GSA:I = 0x8e

.field static final TRANSACTION_isVoLteEnabled:I = 0x48

.field static final TRANSACTION_isVoLteEnabledByPhoneId:I = 0x49

.field static final TRANSACTION_isVolteEnabledFromNetwork:I = 0x4a

.field static final TRANSACTION_isVolteSupportECT:I = 0x4b

.field static final TRANSACTION_isVolteSupportEctByPhoneId:I = 0x4c

.field static final TRANSACTION_registerAdhocProfile:I = 0x22

.field static final TRANSACTION_registerAdhocProfileByPhoneId:I = 0x23

.field static final TRANSACTION_registerAutoConfigurationListener:I = 0x15

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerCmcCallEventListenerForSlot:I = 0x67

.field static final TRANSACTION_registerCmcDialogListenerByToken:I = 0x40

.field static final TRANSACTION_registerCmcRecordingListener:I = 0x8d

.field static final TRANSACTION_registerCmcRegistrationListenerForSlot:I = 0x87

.field static final TRANSACTION_registerCmsRegistrationListenerByPhoneId:I = 0x19

.field static final TRANSACTION_registerDialogEventListener:I = 0x3a

.field static final TRANSACTION_registerDialogEventListenerByToken:I = 0x3c

.field static final TRANSACTION_registerDmValueListener:I = 0x73

.field static final TRANSACTION_registerEpdgListener:I = 0x34

.field static final TRANSACTION_registerImSessionListener:I = 0xd

.field static final TRANSACTION_registerImSessionListenerByPhoneId:I = 0xe

.field static final TRANSACTION_registerImsOngoingFtListener:I = 0x11

.field static final TRANSACTION_registerImsOngoingFtListenerByPhoneId:I = 0x12

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x36

.field static final TRANSACTION_registerImsRegistrationListenerForSlot:I = 0x38

.field static final TRANSACTION_registerProfile:I = 0x26

.field static final TRANSACTION_registerProfileByPhoneId:I = 0x27

.field static final TRANSACTION_registerRttEventListener:I = 0x80

.field static final TRANSACTION_registerSimMobilityStatusListenerByPhoneId:I = 0x17

.field static final TRANSACTION_sendCmcRecordingEvent:I = 0x8c

.field static final TRANSACTION_sendDeregister:I = 0x2f

.field static final TRANSACTION_sendIidToken:I = 0xa

.field static final TRANSACTION_sendMsisdnNumber:I = 0x9

.field static final TRANSACTION_sendRttMessage:I = 0x7d

.field static final TRANSACTION_sendRttSessionModifyRequest:I = 0x7f

.field static final TRANSACTION_sendRttSessionModifyResponse:I = 0x7e

.field static final TRANSACTION_sendTryRegister:I = 0x2a

.field static final TRANSACTION_sendTryRegisterByPhoneId:I = 0x2c

.field static final TRANSACTION_sendTryRegisterCms:I = 0x2b

.field static final TRANSACTION_sendVerificationCode:I = 0x8

.field static final TRANSACTION_setActiveImpu:I = 0x6

.field static final TRANSACTION_setActiveMsisdn:I = 0x7

.field static final TRANSACTION_setAutomaticMode:I = 0x7a

.field static final TRANSACTION_setCrossSimPermanentBlocked:I = 0x93

.field static final TRANSACTION_setEmergencyPdnInfo:I = 0x33

.field static final TRANSACTION_setIsimLoaded:I = 0x4

.field static final TRANSACTION_setNrInterworkingMode:I = 0x95

.field static final TRANSACTION_setProvisionedStringValue:I = 0x45

.field static final TRANSACTION_setProvisionedValue:I = 0x44

.field static final TRANSACTION_setRttMode:I = 0x7b

.field static final TRANSACTION_setSimRefreshed:I = 0x5

.field static final TRANSACTION_setVideocallType:I = 0x64

.field static final TRANSACTION_startDmConfig:I = 0x77

.field static final TRANSACTION_startLocalRingBackTone:I = 0x60

.field static final TRANSACTION_stopLocalRingBackTone:I = 0x61

.field static final TRANSACTION_suspendRegister:I = 0x30

.field static final TRANSACTION_transferCall:I = 0x5f

.field static final TRANSACTION_triggerAutoConfigurationForApp:I = 0x82

.field static final TRANSACTION_unRegisterEpdgListener:I = 0x35

.field static final TRANSACTION_unregisterAutoConfigurationListener:I = 0x16

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterCmcCallEventListenerForSlot:I = 0x68

.field static final TRANSACTION_unregisterCmcDialogListenerByToken:I = 0x41

.field static final TRANSACTION_unregisterCmcRegistrationListenerForSlot:I = 0x88

.field static final TRANSACTION_unregisterCmsRegistrationListenerByPhoneId:I = 0x1a

.field static final TRANSACTION_unregisterDialogEventListener:I = 0x3b

.field static final TRANSACTION_unregisterDialogEventListenerByToken:I = 0x3d

.field static final TRANSACTION_unregisterDmValueListener:I = 0x74

.field static final TRANSACTION_unregisterImSessionListener:I = 0xf

.field static final TRANSACTION_unregisterImSessionListenerByPhoneId:I = 0x10

.field static final TRANSACTION_unregisterImsOngoingFtListener:I = 0x13

.field static final TRANSACTION_unregisterImsOngoingFtListenerByPhoneId:I = 0x14

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x37

.field static final TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0x39

.field static final TRANSACTION_unregisterRttEventListener:I = 0x81

.field static final TRANSACTION_unregisterSimMobilityStatusListenerByPhoneId:I = 0x18

.field static final TRANSACTION_updateConfigValues:I = 0x76

.field static final TRANSACTION_updateRegistration:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 574
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 575
    const-string v0, "com.sec.ims.IImsService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 586
    :cond_0
    const-string v0, "com.sec.ims.IImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_1

    .line 588
    check-cast v0, Lcom/sec/ims/IImsService;

    return-object v0

    .line 590
    :cond_1
    new-instance v0, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    const-string v0, "com.sec.ims.IImsService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 600
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 2168
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2172
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setNrInterworkingMode(II)V

    .line 2173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2158
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2160
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimPermanentBlocked(I)Z

    move-result p0

    .line 2161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2147
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2149
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 2150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2151
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setCrossSimPermanentBlocked(IZ)V

    .line 2152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2139
    :pswitch_3
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupported()Z

    move-result p0

    .line 2140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2130
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2132
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0

    .line 2133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2120
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2122
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->hasCrossSimImsService(I)Z

    move-result p0

    .line 2123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2110
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingRegistered(I)Z

    move-result p0

    .line 2113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2100
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2102
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0

    .line 2103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2089
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/cmc/ICmcRecordingListener;

    move-result-object p4

    .line 2092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V

    .line 2094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2076
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2080
    sget-object v0, Lcom/sec/ims/cmc/CmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/cmc/CmcRecordingInfo;

    .line 2081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    .line 2083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2064
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2068
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    .line 2069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2052
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2054
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2055
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2056
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    .line 2057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2042
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2044
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    .line 2045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 2031
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2035
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 2036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2019
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object p1

    .line 2021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2023
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object p0

    .line 2024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2012
    :pswitch_f
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->dump()V

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1999
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2003
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2005
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z

    move-result p0

    .line 2006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1985
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToInteger(Ljava/lang/String;II)I

    move-result p0

    .line 1992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1971
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1975
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1976
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1977
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1962
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1964
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->triggerAutoConfigurationForApp(I)V

    .line 1965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1951
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1953
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterRttEventListener(ILjava/lang/String;)V

    .line 1956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1939
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1941
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object p4

    .line 1942
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1943
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;

    move-result-object p0

    .line 1944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1945
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1928
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1930
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1931
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1932
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendRttSessionModifyRequest(IZ)V

    .line 1933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1917
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1919
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendRttSessionModifyResponse(IZ)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1908
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1910
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendRttMessage(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1898
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1900
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRttMode(I)I

    move-result p0

    .line 1901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1887
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1891
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setRttMode(II)V

    .line 1892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1876
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1878
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1879
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1880
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setAutomaticMode(IZ)V

    .line 1881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1866
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1868
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isRttCall(I)Z

    move-result p0

    .line 1869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1855
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->finishDmConfig(II)V

    .line 1860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1845
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->startDmConfig(I)I

    move-result p0

    .line 1848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1831
    :pswitch_1f
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1837
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0

    .line 1838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1819
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1823
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 1824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1810
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object p1

    .line 1811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1812
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1801
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object p1

    .line 1802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1789
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1793
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->cmcStopDtmf(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1795
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1775
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .line 1780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->cmcStartDtmf(IIC)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1761
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .line 1766
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->cmcSendDtmf(IIC)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1749
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1753
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->cmcResumeCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1737
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->cmcHoldCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1725
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1729
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->cmcPullCall(ILjava/lang/String;)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1711
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->cmcRejectCall(III)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1697
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->cmcEndCall(III)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1685
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1689
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->cmcAnswerCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1671
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1673
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1675
    sget-object v0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/cmc/CmcCallCmdInfo;

    .line 1676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->cmcMakeCall(ILjava/lang/String;Lcom/sec/ims/cmc/CmcCallCmdInfo;)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    .line 1678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1660
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1664
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmcCallEventListenerForSlot(ILjava/lang/String;)V

    .line 1665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1648
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1650
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/cmc/ICmcCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/cmc/ICmcCallEventListener;

    move-result-object p4

    .line 1651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmcCallEventListenerForSlot(ILcom/sec/ims/cmc/ICmcCallEventListener;)Ljava/lang/String;

    move-result-object p0

    .line 1653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1640
    :pswitch_2f
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    .line 1641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1633
    :pswitch_30
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getVideocallType()I

    move-result p0

    .line 1634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1624
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1626
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->setVideocallType(I)Z

    move-result p0

    .line 1627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1613
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->changeAudioPathForSlot(II)V

    .line 1618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1604
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1606
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->changeAudioPath(I)V

    .line 1607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1596
    :pswitch_34
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->stopLocalRingBackTone()I

    move-result p0

    .line 1597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1583
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1589
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->startLocalRingBackTone(III)I

    move-result p0

    .line 1590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1572
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1562
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1564
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isForbiddenByPhoneId(I)Z

    move-result p0

    .line 1565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1554
    :pswitch_38
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isForbidden()Z

    move-result p0

    .line 1555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1545
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1546
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getNrSaCallCount(I)I

    move-result p0

    .line 1548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1535
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getEpsFbCallCount(I)I

    move-result p0

    .line 1538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1525
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    move-result-object p0

    .line 1528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1514
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableRcsByPhoneId(ZI)V

    .line 1519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1505
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1506
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->enableRcs(Z)V

    .line 1508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1494
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableVoLteByPhoneId(ZI)V

    .line 1499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1485
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->enableVoLte(Z)V

    .line 1488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1472
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    .line 1479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1461
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1463
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableService(Ljava/lang/String;Z)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1451
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    .line 1454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1443
    :pswitch_43
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->hasVoLteSim()Z

    move-result p0

    .line 1444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1432
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    .line 1437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1422
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isNonVerifiedMno(I)Z

    move-result p0

    .line 1425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1408
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    .line 1415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1398
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isServiceEnabled(Ljava/lang/String;)Z

    move-result p0

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1390
    :pswitch_48
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isRcsEnabled()Z

    move-result p0

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1381
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1383
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVolteSupportEctByPhoneId(I)Z

    move-result p0

    .line 1384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1373
    :pswitch_4a
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isVolteSupportECT()Z

    move-result p0

    .line 1374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1364
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVolteEnabledFromNetwork(I)Z

    move-result p0

    .line 1367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1354
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVoLteEnabledByPhoneId(I)Z

    move-result p0

    .line 1357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1346
    :pswitch_4d
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isVoLteEnabled()Z

    move-result p0

    .line 1347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1337
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isImsEnabledByPhoneId(I)Z

    move-result p0

    .line 1340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1329
    :pswitch_4f
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isImsEnabled()Z

    move-result p0

    .line 1330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1319
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setProvisionedStringValue(ILjava/lang/String;)V

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1308
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setProvisionedValue(II)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1298
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getMasterStringValue(I)Ljava/lang/String;

    move-result-object p0

    .line 1301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getMasterValue(I)I

    move-result p0

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1277
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmcDialogListenerByToken(ILjava/lang/String;)V

    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1265
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/cmc/ICmcDialogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/cmc/ICmcDialogListener;

    move-result-object p4

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmcDialogListenerByToken(ILcom/sec/ims/cmc/ICmcDialogListener;)Ljava/lang/String;

    move-result-object p0

    .line 1270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1255
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getLastEndedImsCallInfo(I)Lcom/sec/ims/LastEndedImsCallInfo;

    move-result-object p0

    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1245
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    .line 1248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1234
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterDialogEventListenerByToken(ILjava/lang/String;)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1222
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object p4

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object p0

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object p4

    .line 1214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1200
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object p4

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1189
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 1194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1177
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object p1

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object p0

    .line 1182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1168
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object p1

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1159
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object p1

    .line 1160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1161
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1150
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unRegisterEpdgListener(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1140
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IEpdgListener;

    move-result-object p1

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object p0

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/sec/ims/IImsService;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1115
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1103
    :pswitch_64
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1092
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->suspendRegister(ZI)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1081
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendDeregister(II)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1070
    :pswitch_67
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1061
    :pswitch_68
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1052
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendTryRegisterByPhoneId(I)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1043
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendTryRegisterCms(I)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1036
    :pswitch_6b
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->sendTryRegister()V

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1023
    :pswitch_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1024
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1011
    :pswitch_6d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1012
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->deregisterProfile(Ljava/util/List;Z)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 999
    :pswitch_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1000
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerProfileByPhoneId(Ljava/util/List;I)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 989
    :pswitch_6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 990
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerProfile(Ljava/util/List;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 978
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->deregisterAdhocProfileByPhoneId(II)V

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 969
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->deregisterAdhocProfile(I)V

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 957
    :pswitch_72
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 947
    :pswitch_73
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    move-result p0

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 937
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 927
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 919
    :pswitch_76
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 908
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 898
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 890
    :pswitch_79
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 883
    :pswitch_7a
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isRegistered()Z

    move-result p0

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 873
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V

    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 861
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p1

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;

    move-result-object p0

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 838
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ISimMobilityStatusListener;

    move-result-object p1

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object p0

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 827
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 815
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object p1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object p0

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 795
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListener(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 783
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object p1

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;

    move-result-object p0

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object p1

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object p0

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 753
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImSessionListener(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 741
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object p1

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;

    move-result-object p0

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 731
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object p0

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getNetworkType(I)I

    move-result p0

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 700
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendIidToken(Ljava/lang/String;I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 689
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 678
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendVerificationCode(Ljava/lang/String;I)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 664
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 650
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 643
    :pswitch_90
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->setSimRefreshed()V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 637
    :pswitch_91
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->setIsimLoaded()V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 630
    :pswitch_92
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getPhoneCount()I

    move-result p0

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 622
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object p1

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterCallback(Lcom/sec/ims/ImsEventListener;)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 611
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
