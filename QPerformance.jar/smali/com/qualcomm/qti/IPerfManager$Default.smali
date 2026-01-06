.class public Lcom/qualcomm/qti/IPerfManager$Default;
.super Ljava/lang/Object;
.source "IPerfManager.java"

# interfaces
.implements Lcom/qualcomm/qti/IPerfManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/IPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPerfHalVer()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist perfEvent(ILjava/lang/String;II[I)V
    .locals 0
    .param p1, "evendId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "numArgs"    # I
    .param p5, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist perfGetFeedbackExtn(ILjava/lang/String;II[I)I
    .locals 1
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "numArgs"    # I
    .param p5, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;III)I
    .locals 1
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I
    .param p5, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;IIII[I)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "type"    # I
    .param p6, "tid"    # I
    .param p7, "numArgs"    # I
    .param p8, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;IIII[I)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "type"    # I
    .param p6, "tid"    # I
    .param p7, "numArgs"    # I
    .param p8, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockAcqAndRelease(IIII[I)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "numArgs"    # I
    .param p4, "reserveNumArgs"    # I
    .param p5, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockAcquire(II[I)I
    .locals 1
    .param p1, "duration"    # I
    .param p2, "len"    # I
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockRelease()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .locals 1
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;I)I
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setClientBinder(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method
