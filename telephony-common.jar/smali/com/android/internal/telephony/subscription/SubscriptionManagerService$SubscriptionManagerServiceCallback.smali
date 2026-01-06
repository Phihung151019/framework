.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
.super Ljava/lang/Object;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionManagerServiceCallback"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public blacklist invokeFromExecutor(Ljava/lang/Runnable;)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onDefaultDataSubscriptionChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onSubscriptionChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onUiccApplicationsEnabledChanged(I)V
    .locals 0

    .line 0
    return-void
.end method
