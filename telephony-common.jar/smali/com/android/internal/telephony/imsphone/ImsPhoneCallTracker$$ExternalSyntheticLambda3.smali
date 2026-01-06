.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IILcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->$r8$lambda$13UlsWLtDKZgRGRzVLq88ksIG5g(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IILcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    return-void
.end method
