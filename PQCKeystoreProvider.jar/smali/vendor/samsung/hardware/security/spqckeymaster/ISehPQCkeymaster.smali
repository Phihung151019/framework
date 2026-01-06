.class public interface abstract Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;
.super Ljava/lang/Object;
.source "ISehPQCkeymaster.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;,
        Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "7ffff739cb00600262f71b7fa22a7dddfb49450b"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 602
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$samsung$hardware$security$spqckeymaster$ISehPQCkeymaster"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract begin(I[B[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/BeginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkDomainKeyStatus()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkPreloadedKeyValidation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteAllKey()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteKey(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exportKey(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateKeyPair([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateKeyPairEx([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract importKey([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGenerateKeyAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract manageProvisionedKey(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
