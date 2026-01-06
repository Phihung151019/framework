.class public Lcom/android/internal/telephony/SehRadioDataProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioDataProxy.java"


# instance fields
.field private volatile blacklist mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 75
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    return-object p0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/data/ISehRadioData;)Lcom/android/internal/telephony/HalVersion;
    .locals 4

    .line 48
    const-string v0, "SehRadioDataProxy"

    .line 50
    :try_start_0
    invoke-interface {p2}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V

    return-void

    .line 94
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    .line 95
    iget p3, p3, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;->defaultDataPhoneId:I

    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->defaultDataPhoneId:I

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    return-void
.end method

.method public blacklist setMobileDataSetting(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioDataProxy;->mSehDataProxy:Lvendor/samsung/hardware/radio/data/ISehRadioData;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setMobileDataSetting(IZZ)V

    return-void

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setMobileDataSetting(IZZ)V

    return-void
.end method
