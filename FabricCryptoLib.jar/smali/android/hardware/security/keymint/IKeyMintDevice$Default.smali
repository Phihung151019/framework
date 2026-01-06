.class public Landroid/hardware/security/keymint/IKeyMintDevice$Default;
.super Ljava/lang/Object;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
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
.method public addRngEntropy([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;
    .locals 1
    .param p1, "purpose"    # I
    .param p2, "keyBlob"    # [B
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public convertStorageKeyToEphemeral([B)[B
    .locals 1
    .param p1, "storageKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAllKeys()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public deleteKey([B)V
    .locals 0
    .param p1, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public destroyAttestationIds()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V
    .locals 0
    .param p1, "passwordOnly"    # Z
    .param p2, "timestampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public earlyBootEnded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 1
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;
    .locals 1
    .param p1, "keyBlob"    # [B
    .param p2, "appId"    # [B
    .param p3, "appData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootOfTrust([B)[B
    .locals 1
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootOfTrustChallenge()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 1
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "keyFormat"    # I
    .param p3, "keyData"    # [B
    .param p4, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 1
    .param p1, "wrappedKeyData"    # [B
    .param p2, "wrappingKeyBlob"    # [B
    .param p3, "maskingKey"    # [B
    .param p4, "unwrappingParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p5, "passwordSid"    # J
    .param p7, "biometricSid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRootOfTrust([B)V
    .locals 0
    .param p1, "rootOfTrust"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B
    .locals 1
    .param p1, "keyBlobToUpgrade"    # [B
    .param p2, "upgradeParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
