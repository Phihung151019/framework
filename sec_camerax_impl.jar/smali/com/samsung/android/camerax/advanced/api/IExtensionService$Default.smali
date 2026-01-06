.class public Lcom/samsung/android/camerax/advanced/api/IExtensionService$Default;
.super Ljava/lang/Object;
.source "IExtensionService.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/api/IExtensionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/api/IExtensionService;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeClient(Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .locals 1
    .param p1, "configuration"    # Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method
