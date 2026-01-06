.class public Lvendor/samsung/hardware/sysinput/ISehSysInputCallback$Default;
.super Ljava/lang/Object;
.source "ISehSysInputCallback.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onReportInformation(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onReportRawData(II[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
