.class public Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Default;
.super Ljava/lang/Object;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNsdsServiceResponse(IZLjava/util/List;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "success"    # Z
    .param p3, "errorCodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
