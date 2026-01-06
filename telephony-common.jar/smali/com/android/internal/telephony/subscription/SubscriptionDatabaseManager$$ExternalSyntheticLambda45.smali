.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyManager;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Landroid/telephony/TelephonyManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$1:Landroid/telephony/TelephonyManager;

    iput-boolean p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$1:Landroid/telephony/TelephonyManager;

    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;->f$2:Z

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$WZg_4Msglu1KTk7ajc759jSf6ZU(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Landroid/telephony/TelephonyManager;ZLjava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method
