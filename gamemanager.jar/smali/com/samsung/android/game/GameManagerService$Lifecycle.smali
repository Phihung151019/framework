.class public Lcom/samsung/android/game/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "gamemanager"

.field private static final TAG:Ljava/lang/String; = "GameManager$Lifecycle"


# instance fields
.field private mGameManagerService:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/samsung/android/game/GameManagerService;

    invoke-direct {v0, p1}, Lcom/samsung/android/game/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService$Lifecycle;->mGameManagerService:Lcom/samsung/android/game/GameManagerService;

    .line 88
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    return-void
.end method
