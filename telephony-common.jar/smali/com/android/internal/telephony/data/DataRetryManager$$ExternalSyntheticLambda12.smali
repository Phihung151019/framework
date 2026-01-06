.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;->f$0:J

    iput p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;->f$0:J

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$miuplOrHB0xSUIllb9kyCXfOtQ0(JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method
