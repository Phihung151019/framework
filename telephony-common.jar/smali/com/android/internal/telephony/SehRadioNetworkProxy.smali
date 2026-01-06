.class public Lcom/android/internal/telephony/SehRadioNetworkProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioNetworkProxy.java"


# instance fields
.field private volatile blacklist mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-void
.end method

.method private static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 39
    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public blacklist cfrmCpaiFeatureInfo(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->cfrmCpaiFeatureInfo(III[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-void
.end method

.method public blacklist emergencyControl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->emergencyControl(II)V

    return-void

    .line 180
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->emergencyControl(II)V

    return-void
.end method

.method public blacklist emergencySearch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->emergencySearch(I)V

    return-void

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->emergencySearch(I)V

    return-void
.end method

.method public blacklist evtCpaiDataGathering(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->evtCpaiDataGathering(II[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist execCpaiModelUpdate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->execCpaiModelUpdate(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-object p0
.end method

.method public blacklist getAvailableNetworks(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getAvailableNetworks(I)V

    return-void

    .line 331
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getAvailableNetworks(I)V

    return-void
.end method

.method public blacklist getCnap(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCnap(I)V

    return-void

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCnap(I)V

    return-void
.end method

.method public blacklist getCpaiFeatureInfo(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCpaiFeatureInfo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getCpaiModelVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCpaiModelVersion(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getCsgList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getCsgList(I)V

    return-void

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCsgList(I)V

    return-void
.end method

.method public blacklist getDisable2g(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getDisable2g(I)V

    return-void

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getDisable2g(I)V

    return-void
.end method

.method public blacklist getNrIconType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getNrIconType(I)V

    return-void

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getNrIconType(I)V

    return-void
.end method

.method public blacklist getNrMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getNrMode(I)V

    return-void

    .line 239
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getNrMode(I)V

    return-void
.end method

.method public blacklist getPreferredNetworkList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getPreferredNetworkList(I)V

    return-void

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPreferredNetworkList(I)V

    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLE(IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getVendorSpecificConfiguration(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getVendorSpecificConfiguration(I)V

    return-void

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->getVendorSpecificConfiguration(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist selectCsgManual(ILjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehCsgInfo;-><init>()V

    .line 206
    iput p3, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->csgId:I

    .line 207
    iput-object v1, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->name:Ljava/lang/String;

    .line 208
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->plmn:Ljava/lang/String;

    .line 209
    iput p4, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->rat:I

    .line 210
    iput v2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->category:I

    .line 211
    iput v2, v0, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->signalStrength:I

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->selectCsgManual(ILvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    return-void

    .line 214
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    .line 215
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->csgId:I

    .line 216
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->name:Ljava/lang/String;

    .line 217
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->plmn:Ljava/lang/String;

    .line 218
    iput p4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->rat:I

    .line 219
    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->category:I

    .line 220
    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->signalStrength:I

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    return-void
.end method

.method public blacklist sendEncodedUssd(I[BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 289
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;-><init>()V

    .line 290
    new-array v2, p3, [B

    iput-object v2, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->encodedUssd:[B

    :goto_0
    if-ge v1, p3, :cond_1

    .line 292
    iget-object v2, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->encodedUssd:[B

    aget-byte v3, p2, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iput p3, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->ussdLength:I

    .line 295
    iput p4, v0, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->dcsCode:I

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendEncodedUssd(ILvendor/samsung/hardware/radio/network/SehEncodedUssd;)V

    return-void

    .line 298
    :cond_2
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    .line 299
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_3

    aget-byte v3, p2, v1

    .line 300
    iget-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->encodedUssd:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_3
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->ussdLength:I

    .line 303
    iput p4, v0, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->dcsCode:I

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    return-void
.end method

.method public blacklist sendRequestRaw(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendRequestRaw(I[B)V

    return-void

    .line 313
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendRequestRaw(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist sendRequestStrings(I[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->sendRequestStrings(I[Ljava/lang/String;)V

    return-void

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendRequestStrings(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;)Lcom/android/internal/telephony/HalVersion;
    .locals 4

    .line 51
    const-string v0, "SehRadioNetworkProxy"

    .line 53
    :try_start_0
    invoke-interface {p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setCpaiDataGathering(IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface/range {p0 .. p5}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setCpaiDataGathering(IIIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setCpaiDevAppMessage(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setCpaiDevAppMessage(III[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setDisable2g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setDisable2g(II)V

    return-void

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setDisable2g(II)V

    return-void
.end method

.method public blacklist setImsCallList(ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/samsung/hardware/radio/network/SehImsCall;

    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    .line 99
    new-instance v5, Lvendor/samsung/hardware/radio/network/SehImsCall;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/network/SehImsCall;-><init>()V

    aput-object v5, v0, v2

    .line 100
    iget v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->state:I

    iput v6, v5, Lvendor/samsung/hardware/radio/network/SehImsCall;->state:I

    .line 101
    iget v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->type:I

    iput v6, v5, Lvendor/samsung/hardware/radio/network/SehImsCall;->type:I

    .line 102
    iget v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMt:I

    iput v6, v5, Lvendor/samsung/hardware/radio/network/SehImsCall;->isMt:I

    .line 103
    iget v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMpty:I

    iput v6, v5, Lvendor/samsung/hardware/radio/network/SehImsCall;->isMpty:I

    .line 104
    iget-object v4, v4, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->number:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    iput-object v4, v5, Lvendor/samsung/hardware/radio/network/SehImsCall;->number:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setImsCallList(I[Lvendor/samsung/hardware/radio/network/SehImsCall;)V

    return-void

    .line 109
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setImsCallList(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setNrDisableMode(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setNrMode(IIZ)V

    return-void

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->setNrMode_2_2(IIZ)V

    return-void
.end method

.method public blacklist setPreferredNetworkList(IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;-><init>()V

    .line 127
    iput p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->index:I

    .line 128
    invoke-static {p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 129
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 130
    iput p5, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmAct:I

    .line 131
    iput p6, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 132
    iput p7, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->utranAct:I

    .line 133
    iput p8, v0, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->mode:I

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    return-void

    .line 136
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 137
    iput p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 138
    invoke-static {p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 139
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 140
    iput p5, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    .line 141
    iput p6, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 142
    iput p7, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    .line 143
    iput p8, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setScanResultViaBLE(IBB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setVendorSpecificConfiguration(ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    .line 267
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 268
    new-instance v5, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;-><init>()V

    .line 269
    invoke-virtual {v4}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    .line 270
    invoke-virtual {v4}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .line 271
    aput-object v5, v0, v1

    move v1, v4

    goto :goto_0

    .line 273
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioNetworkProxy;->mSehNetworkProxy:Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setVendorSpecificConfiguration(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    return-void

    .line 275
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 277
    new-instance v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    invoke-direct {v4}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;-><init>()V

    .line 278
    invoke-virtual {v3}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    .line 279
    invoke-virtual {v3}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    .line 280
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    check-cast p0, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V

    return-void
.end method
