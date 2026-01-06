.class Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
.super Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pdc1Builder"
.end annotation


# instance fields
.field protected mConnectDuration:I

.field private mDhcpReason:I

.field private mDisconnectInternalReason:I

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mGatewayAddress:Ljava/lang/String;

.field private mHandleState:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mIpSettings:I

.field private mLastProcessId:I

.field private mNetworkMask:I

.field private mPackageName:Ljava/lang/String;

.field private mPreviousProcessId:I

.field private mSnsUnwantedReason:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    .line 8
    .line 9
    const-string p2, "unknown"

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    .line 12
    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    .line 18
    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    .line 20
    .line 21
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    .line 24
    .line 25
    const-string p2, "0.0.0.0"

    .line 26
    .line 27
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 34
    .line 35
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .locals 3

    .line 1
    const-string v0, "PDC1"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->getBigDataBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "conn_duration"

    .line 8
    .line 9
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string v1, "ipAssignment"

    .line 15
    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "ip"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "gw"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "dns1"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "dns2"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "networkPrefix"

    .line 50
    .line 51
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method getBigdataParameterString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0
.end method

.method setAdpsSettings(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 2
    .line 3
    return-object p0
.end method

.method setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setBssidAndOuiInternal(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setDhcpResult(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    .line 2
    .line 3
    return-object p0
.end method

.method setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->previousProcessMessage:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setPreviousProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 19
    .line 20
    .line 21
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->connectionDurationMinutes:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDuration(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 24
    .line 25
    .line 26
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setIpSetting(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setGatewayAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDns1Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDns2Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 49
    .line 50
    .line 51
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setNetMask(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 54
    .line 55
    .line 56
    :cond_0
    return-object p0
.end method

.method setDisconnectInternalReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    .line 2
    .line 3
    return-object p0
.end method

.method setDisconnectReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setReasonInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setDns1Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "0.0.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method setDns2Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "0.0.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method setDuration(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    .line 2
    .line 3
    return-object p0
.end method

.method setFrequency(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setFrequencyInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setGatewayAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "0.0.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "0.0.0.0"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method setIpSetting(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    .line 2
    .line 3
    return-object p0
.end method

.method setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    .line 2
    .line 3
    return-object p0
.end method

.method setLocallyGenerated(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setLocallyGeneratedInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setNetMask(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    .line 2
    .line 3
    return-object p0
.end method

.method setNetworkType(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setNetworkTypeInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setOui(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setOuiInternal(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method setPreviousProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    .line 2
    .line 3
    return-object p0
.end method

.method setRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setRssiInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setScreenState(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setScreenStateInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSsidInternal(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setSupplicantState(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSupplicantStateInternal(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method setUnwantedReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    .line 2
    .line 3
    return-object p0
.end method

.method setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
