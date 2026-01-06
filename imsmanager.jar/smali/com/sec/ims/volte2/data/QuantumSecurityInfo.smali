.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.super Ljava/lang/Object;
.source "QuantumSecurityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_ENCRYPT_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_PEER_PROFILE_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_CALL_DIRECTION;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_CRYPTO_MODE;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_KEY_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_LOGIN_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_AUTH_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_VOLTE_STATUS;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/QuantumSecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static QUANTUM_ENCRYPT_KEY_LENGTH:I = 0x10


# instance fields
.field private mCallDirection:I

.field private mCryptoMode:I

.field private mEncryptStatus:I

.field private mLocalPhoneNumber:Ljava/lang/String;

.field private mPeerProfileStatus:I

.field private mQtSessionId:Ljava/lang/String;

.field private mRemoteTelNum:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 122
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 123
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 122
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 123
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAll()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    .line 237
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 238
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 239
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallDirection()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    return p0
.end method

.method public getCryptoMode()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    return p0
.end method

.method public declared-synchronized getEncryptStatus()I
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    iget v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocalPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerProfileStatus()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    return p0
.end method

.method public declared-synchronized getQtSessionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRemoteTelNum()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method public setCallDirection(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    return-void
.end method

.method public setCryptoMode(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    return-void
.end method

.method public declared-synchronized setEncryptStatus(I)V
    .locals 0

    monitor-enter p0

    .line 204
    :try_start_0
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLocalPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPeerProfileStatus(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    return-void
.end method

.method public declared-synchronized setQtSessionId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 220
    :try_start_0
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRemoteTelNum(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuantumSecurityInfo [mEncryptStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPeerProfileStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCryptoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQtSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 252
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 253
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 254
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteTelNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 144
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
