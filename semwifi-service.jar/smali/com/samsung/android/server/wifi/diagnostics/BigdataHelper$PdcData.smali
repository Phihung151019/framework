.class abstract Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PdcData"
.end annotation


# instance fields
.field protected mAdpsSetting:I

.field protected mAssocStatusCode:I

.field protected mBssid:Ljava/lang/String;

.field protected final mCategoryId:I

.field protected mFrequency:I

.field protected mKeyMgmt:I

.field protected mLocallyGenerated:I

.field protected mNetworkInternalType:I

.field protected mNl80211Mode:I

.field protected mOui:Ljava/lang/String;

.field protected final mPatternId:Ljava/lang/String;

.field protected mReason:I

.field protected mRssi:I

.field protected mScreenState:I

.field protected mSsid:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;

.field protected mWpaSupplicantState:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    .line 6
    .line 7
    const-string v0, "00:00:00"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    .line 13
    .line 14
    const-string v1, "unknown"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "00:00:00:00:00:00"

    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    .line 37
    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mPatternId:Ljava/lang/String;

    .line 43
    .line 44
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method protected getBigDataBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->getBigdataParameterString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v2, "feature"

    .line 23
    .line 24
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "data"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "patternId"

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mPatternId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "categoryId"

    .line 40
    .line 41
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string p1, "locallyGenerated"

    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string p1, "frequency"

    .line 54
    .line 55
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const-string p1, "oui"

    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "bssid"

    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "ssid"

    .line 75
    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p1, "screen_on"

    .line 82
    .line 83
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string p1, "reason"

    .line 89
    .line 90
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    .line 91
    .line 92
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string p1, "assocReason"

    .line 96
    .line 97
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    .line 98
    .line 99
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string p1, "rssi"

    .line 103
    .line 104
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    .line 105
    .line 106
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    const-string p1, "apTypeInt"

    .line 110
    .line 111
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    const-string p1, "wpaState"

    .line 117
    .line 118
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    .line 119
    .line 120
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string p1, "adpsState"

    .line 124
    .line 125
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 126
    .line 127
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string p1, "80211mode"

    .line 131
    .line 132
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    .line 133
    .line 134
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    const-string p1, "wpaSecureType"

    .line 138
    .line 139
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    .line 140
    .line 141
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string p1, "data should not be null"

    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    const-string p1, "feature name should not be null"

    .line 156
    .line 157
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method abstract getBigdataParameterString()Ljava/lang/String;
.end method

.method protected set80211ModeInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    .line 2
    .line 3
    return-void
.end method

.method protected setAdpsSettingsInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 2
    .line 3
    return-void
.end method

.method protected setAssocRejectReasonInternal(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected setBssidAndOuiInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "00:00:00:00:00:00"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 v0, 0x11

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method protected setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSsidInternal(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setBssidAndOuiInternal(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->oui:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setOuiInternal(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->frequency:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setFrequencyInternal(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setLocallyGeneratedInternal(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setScreenStateInternal(I)V

    .line 31
    .line 32
    .line 33
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setReasonInternal(I)V

    .line 36
    .line 37
    .line 38
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setAssocRejectReasonInternal(I)V

    .line 41
    .line 42
    .line 43
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setRssiInternal(I)V

    .line 46
    .line 47
    .line 48
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->networkInternalType:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setNetworkTypeInternal(I)V

    .line 51
    .line 52
    .line 53
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaState:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSupplicantStateInternal(I)V

    .line 56
    .line 57
    .line 58
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setAdpsSettingsInternal(I)V

    .line 61
    .line 62
    .line 63
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->nl80211Mode:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->set80211ModeInternal(I)V

    .line 66
    .line 67
    .line 68
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaKeyMgmt:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setKeyMgmtInternal(I)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method protected setFrequencyInternal(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected setKeyMgmtInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    .line 2
    .line 3
    return-void
.end method

.method protected setLocallyGeneratedInternal(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected setNetworkTypeInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    .line 2
    .line 3
    return-void
.end method

.method protected setOuiInternal(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "00:00:00"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected setReasonInternal(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected setRssiInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    .line 2
    .line 3
    return-void
.end method

.method protected setScreenStateInternal(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected setSsidInternal(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected setSupplicantStateInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    .line 2
    .line 3
    return-void
.end method
