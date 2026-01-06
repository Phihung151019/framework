.class public Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Default;
.super Ljava/lang/Object;
.source "ISehFkeymaster.java"

# interfaces
.implements Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public decryptFinish([BI)[B
    .locals 1
    .param p1, "cipher"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptSalt([B[B)[B
    .locals 1
    .param p1, "privateKey"    # [B
    .param p2, "eSalt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptUpdate([BI)[B
    .locals 1
    .param p1, "cipher"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptUpdateAad([BI)V
    .locals 0
    .param p1, "aad"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public ecdh([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "privateKey"    # [B
    .param p3, "publicKey"    # [B
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public ecdhPQDec([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B
    .locals 1
    .param p1, "keyPriPQ"    # [B
    .param p2, "cipherText"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "privateKey"    # [B
    .param p5, "publicKey"    # [B
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public ecdhPQEnc([B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B[B)[B
    .locals 1
    .param p1, "keyPubPQ"    # [B
    .param p2, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p3, "privateKey"    # [B
    .param p4, "publicKey"    # [B
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public encryptFinish([BI)[B
    .locals 1
    .param p1, "plain"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptRSA([B[B)[B
    .locals 1
    .param p1, "publicKey"    # [B
    .param p2, "plain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptUpdate([BI)[B
    .locals 1
    .param p1, "plain"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptUpdateAad([BI)V
    .locals 0
    .param p1, "aad"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public exportData([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B)[B
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "dataKey"    # [B
    .param p3, "soKey"    # [B
    .param p4, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportKey([B[B[B[B)[B
    .locals 1
    .param p1, "encryptionKey"    # [B
    .param p2, "exportedKey"    # [B
    .param p3, "pw"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKey([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyPQ([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 138
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public importData([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B
    .locals 1
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptedData"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public importKey([B[B[B[B)[B
    .locals 1
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptedKey"    # [B
    .param p3, "pw"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public kdf([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B
    .locals 1
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "privateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyDerivation([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyRecovery([B[B[B[B)[B
    .locals 1
    .param p1, "wk"    # [B
    .param p2, "sTAkey"    # [B
    .param p3, "eCeRk"    # [B
    .param p4, "rkresult"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyRegister([B[B[B[B)[B
    .locals 1
    .param p1, "rk"    # [B
    .param p2, "cek"    # [B
    .param p3, "wk"    # [B
    .param p4, "HSMpkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public secureImportKey([B[B)[B
    .locals 1
    .param p1, "publicKey"    # [B
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public secureImportKeySHA1([B[B)[B
    .locals 1
    .param p1, "publicKey"    # [B
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public signBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)I
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public signFinish([BI)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public signUpdate([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method
