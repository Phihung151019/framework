.class public Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DisplayAiqeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mDisplayAiqeManagerService:Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;

    invoke-direct {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService$Lifecycle;->mDisplayAiqeManagerService:Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;

    .line 43
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 47
    const-string v0, "DisplayAiqeManagerService$Lifecycle"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "display_aiqe"

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService$Lifecycle;->mDisplayAiqeManagerService:Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    return-void
.end method
