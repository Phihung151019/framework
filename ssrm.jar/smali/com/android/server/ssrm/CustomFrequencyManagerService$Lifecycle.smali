.class public Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 365
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 375
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 376
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 369
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 370
    const-string v0, "CustomFrequencyManagerService"

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 371
    return-void
.end method
