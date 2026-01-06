.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$N2WMLP-EwXreHZY16e7Kw94cahA(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z

    move-result p0

    return p0
.end method
