.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataProfileManager;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    iput p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$LyOCZIXOXwIYdECDuvaYBM5Hbvw(Lcom/android/internal/telephony/data/DataProfileManager;ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
