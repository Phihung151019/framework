.class public Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Default;
.super Ljava/lang/Object;
.source "IFabricCryptoService.java"

# interfaces
.implements Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkImportedBlobWithPassword([B[B[B)I
    .locals 1
    .param p1, "wrappedKey"    # [B
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public decryptBegin(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .param p3, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public decryptFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptSalt(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "eSalt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptUpdate([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public decryptUpdateAad([BI)I
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public deleteKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public encryptBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)Lcom/samsung/security/fabric/cryptod/OperationResult;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptUpdate([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptUpdateAad([BI)I
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public existKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportKeyWithPassword(Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportKeyWithSecureImport(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "sokeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public exportPubkeyData(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B
    .locals 1
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKey(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public generateKeyPQ(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 174
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getPQEncapKey(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public importData(Ljava/lang/String;[BLjava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;[B)I
    .locals 1
    .param p1, "wrappedDataAlias"    # Ljava/lang/String;
    .param p2, "wrappedData"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .param p5, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BLjava/lang/String;[B)I
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public importKeyWithPassword(Ljava/lang/String;[B[B[B)I
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "password"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .param p6, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "decapKeyAlias"    # Ljava/lang/String;
    .param p2, "cipherText"    # [B
    .param p3, "privateKeyAlias"    # Ljava/lang/String;
    .param p4, "publicKey"    # [B
    .param p5, "secretKeyAlias"    # Ljava/lang/String;
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .param p8, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B
    .locals 1
    .param p1, "encapKey"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
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

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "inputAlias"    # Ljava/lang/String;
    .param p4, "outputAlias"    # Ljava/lang/String;
    .param p5, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "sTAAlias"    # Ljava/lang/String;
    .param p4, "wk"    # [B
    .param p5, "eCeRk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "wk"    # [B
    .param p4, "HSMpkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public signBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public signFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public signUpdate([BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method
