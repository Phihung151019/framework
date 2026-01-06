.class public Lcom/gsma/services/rcs/history/IHistoryService$Default;
.super Ljava/lang/Object;
.source "IHistoryService.java"

# interfaces
.implements Lcom/gsma/services/rcs/history/IHistoryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/history/IHistoryService;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public createUniqueId(I)J
    .locals 2
    .param p1, "providerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "providerId"    # I
    .param p2, "providerUri"    # Landroid/net/Uri;
    .param p3, "database"    # Landroid/net/Uri;
    .param p4, "table"    # Ljava/lang/String;
    .param p5, "columnMapping"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public unRegisterExtraHistoryLogMember(I)V
    .locals 0
    .param p1, "providerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
