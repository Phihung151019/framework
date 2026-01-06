.class public final Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;
.super Ljava/lang/Object;
.source "DisplayAiqeHalInstance.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;Landroid/content/Context;)Lcom/samsung/android/displayaiqe/DisplayAiqeHal;
    .locals 2
    .param p0, "aiqeManager"    # Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;->TAG:Ljava/lang/String;

    const-string v1, "Querying Display AIQE HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->isServicePresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;->TAG:Ljava/lang/String;

    const-string v1, "Display AIQE AIDL present"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;-><init>(Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;Landroid/content/Context;)V

    return-object v0

    .line 30
    :cond_0
    sget-object v0, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;->TAG:Ljava/lang/String;

    const-string v1, "Display AIQE AIDL is not present"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
