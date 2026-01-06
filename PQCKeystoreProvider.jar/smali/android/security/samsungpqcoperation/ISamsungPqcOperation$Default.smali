.class public Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Default;
.super Ljava/lang/Object;
.source "ISamsungPqcOperation.java"

# interfaces
.implements Landroid/security/samsungpqcoperation/ISamsungPqcOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAllKey()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .locals 0
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public generateKey(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 1
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "params"    # [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 1
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
