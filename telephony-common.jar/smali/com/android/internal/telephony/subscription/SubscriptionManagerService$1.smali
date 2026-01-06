.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;
.super Landroid/database/ContentObserver;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/Handler;)V
    .locals 0
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

    .line 576
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mupdateSubStatus(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    return-void
.end method
