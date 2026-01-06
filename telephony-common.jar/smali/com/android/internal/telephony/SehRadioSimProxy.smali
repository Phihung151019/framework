.class public Lcom/android/internal/telephony/SehRadioSimProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioSimProxy.java"


# instance fields
.field private volatile blacklist mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface/range {p0 .. p6}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_1
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget v2, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->nameLength:I

    const-string v3, " ] = "

    const-string v4, "SehRadioSimProxy"

    if-ge v1, v2, :cond_2

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->name:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->name:[B

    array-length v2, v1

    move v6, v0

    :goto_1
    if-ge v6, v2, :cond_3

    aget-byte v7, v1, v6

    .line 194
    iget-object v8, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 197
    :cond_3
    iget v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->nameDcs:I

    iput v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    .line 198
    iget v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->nameLength:I

    iput v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    .line 199
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->number:Ljava/lang/String;

    iput-object v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    .line 201
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->gsm8bitEmail:[B

    array-length v2, v1

    move v6, v0

    :goto_2
    if-ge v6, v2, :cond_4

    aget-byte v7, v1, v6

    .line 202
    iget-object v8, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 204
    :cond_4
    iget v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->gsm8bitEmailLength:I

    iput v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    .line 206
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anr:Ljava/lang/String;

    iput-object v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    .line 207
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrA:Ljava/lang/String;

    iput-object v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 208
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrB:Ljava/lang/String;

    iput-object v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 209
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrC:Ljava/lang/String;

    iput-object v1, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    move v1, v0

    .line 211
    :goto_3
    iget v2, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sneLength:I

    if-ge v1, v2, :cond_5

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sne["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sne:[B

    aget-byte v6, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_5
    iget-object v1, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sne:[B

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_6

    aget-byte v3, v1, v0

    .line 216
    iget-object v4, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 218
    :cond_6
    iget v0, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sneLength:I

    iput v0, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    .line 219
    iget p5, p5, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sneDcs:I

    iput p5, v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 75
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-object p0
.end method

.method public blacklist getAtr(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getAtr(I)V

    return-void

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getAtr(I)V

    return-void
.end method

.method public blacklist getIccCardStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getIccCardStatus(I)V

    return-void

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getIccCardStatus(I)V

    return-void
.end method

.method public blacklist getPhonebookEntry(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getPhonebookEntry(III)V

    return-void

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPhonebookEntry(III)V

    return-void
.end method

.method public blacklist getPhonebookStorageInfo(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getPhonebookStorageInfo(II)V

    return-void

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPhonebookStorageInfo(II)V

    return-void
.end method

.method public blacklist getSimLockInfo(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getSimLockInfo(III)V

    return-void

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getSimLockInfo(III)V

    return-void
.end method

.method public blacklist getUsimPhonebookCapability(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getUsimPhonebookCapability(I)V

    return-void

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getUsimPhonebookCapability(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/sim/ISehRadioSim;)Lcom/android/internal/telephony/HalVersion;
    .locals 4

    .line 48
    const-string v0, "SehRadioSimProxy"

    .line 50
    :try_start_0
    invoke-interface {p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getInterfaceVersion()I

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

    .line 55
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 56
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    const/4 p1, 0x1

    .line 57
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

.method public blacklist setSimInitEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setSimInitEvent(I)V

    return-void

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setSimInitEvent(I)V

    return-void
.end method

.method public blacklist setSimOnOff(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setSimOnOff(II)V

    return-void

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setSimOnOff(II)V

    return-void
.end method

.method public blacklist supplyIccPersonalization(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->supplyIccPersonalization(ILjava/lang/String;)V

    return-void

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->supplyIccPersonalization(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    return-void

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    return-void
.end method
