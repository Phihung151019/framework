.class public Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Default;
.super Ljava/lang/Object;
.source "ISehPQCOperation.java"

# interfaces
.implements Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;
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
.method public abort()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish([B[B[B)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .param p3, "contextString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public update([B)[B
    .locals 1
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
