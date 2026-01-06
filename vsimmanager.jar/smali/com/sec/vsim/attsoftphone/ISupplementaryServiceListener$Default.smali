.class public Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Default;
.super Ljava/lang/Object;
.source "ISupplementaryServiceListener.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 0
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
