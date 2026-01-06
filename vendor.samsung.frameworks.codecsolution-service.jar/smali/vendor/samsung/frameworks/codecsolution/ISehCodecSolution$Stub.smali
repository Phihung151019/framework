.class public abstract Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"

# interfaces
.implements Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDisplaySize:I = 0x2

.field static final TRANSACTION_getH2SCAllowlistStatus:I = 0xd

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSmartFittingAllowlistStatus:I = 0xc

.field static final TRANSACTION_getSmartFittingMode:I = 0x9

.field static final TRANSACTION_getVideoRecordingParameter:I = 0x10

.field static final TRANSACTION_hideSmartFittingButton:I = 0x6

.field static final TRANSACTION_isDesktopMode:I = 0x1

.field static final TRANSACTION_setAutoFitMode:I = 0xa

.field static final TRANSACTION_setBlackbarState:I = 0x7

.field static final TRANSACTION_setSmartFittingMode:I = 0x8

.field static final TRANSACTION_setSmartFittingPid:I = 0xb

.field static final TRANSACTION_setVideoRecordingParameter:I = 0xf

.field static final TRANSACTION_showSmartFittingButton:I = 0x5

.field static final TRANSACTION_startSmartFittingService:I = 0x3

.field static final TRANSACTION_stopSmartFittingService:I = 0x4

.field static final TRANSACTION_updateMediaStatisticsData:I = 0xe

.field static final TRANSACTION_updateStreamStatus:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "getInterfaceHash"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "updateStreamStatus"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "getVideoRecordingParameter"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "setVideoRecordingParameter"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "updateMediaStatisticsData"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "getH2SCAllowlistStatus"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "getSmartFittingAllowlistStatus"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "setSmartFittingPid"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "setAutoFitMode"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "getSmartFittingMode"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    const-string p0, "setSmartFittingMode"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    const-string p0, "setBlackbarState"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    const-string p0, "hideSmartFittingButton"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    const-string p0, "showSmartFittingButton"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    const-string p0, "stopSmartFittingService"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    const-string p0, "startSmartFittingService"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    const-string p0, "getDisplaySize"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    const-string p0, "isDesktopMode"

    .line 64
    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 1
    const p0, 0xfffffe

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 9
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13
    invoke-interface {p0, p1, p4, v0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->updateStreamStatus(IZI)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 15
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    invoke-interface {p0, v0, v1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getVideoRecordingParameter(J)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    move-result-object p0

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 20
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 21
    sget-object p1, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 23
    invoke-interface {p0, v0, v1, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->setVideoRecordingParameter(JLvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 25
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 27
    invoke-interface {p0, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->updateMediaStatisticsData(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 29
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    invoke-interface {p0, p1, p4}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getH2SCAllowlistStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 35
    :pswitch_5
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getSmartFittingAllowlistStatus()I

    move-result p0

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 40
    invoke-interface {p0, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->setSmartFittingPid(I)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 44
    invoke-interface {p0, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->setAutoFitMode(Z)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 46
    :pswitch_8
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getSmartFittingMode()I

    move-result p0

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 49
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 51
    invoke-interface {p0, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->setSmartFittingMode(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 55
    invoke-interface {p0, p1}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->setBlackbarState(Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :pswitch_b
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->hideSmartFittingButton()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :pswitch_c
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->showSmartFittingButton()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :pswitch_d
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->stopSmartFittingService()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :pswitch_e
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->startSmartFittingService()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :pswitch_f
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->getDisplaySize()Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;

    move-result-object p0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 68
    :pswitch_10
    invoke-interface {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;->isDesktopMode()Z

    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
