.class public Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;
.super Landroid/os/HandlerThread;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KMTDThread"
.end annotation


# instance fields
.field handler:Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

.field final synthetic this$0:Lcom/samsung/android/knox/mtd/KMTDService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/knox/mtd/KMTDService;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 406
    return-void
.end method


# virtual methods
.method public getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->handler:Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->handler:Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->handler:Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 3

    .line 410
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->handler:Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    .line 411
    return-void
.end method
