.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$0:I

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$2:Z

    iput-boolean p4, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$0:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$2:Z

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$3:Z

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$vGWk7fGleSlrM4FVV22XS5PrlOY(ILjava/util/concurrent/atomic/AtomicBoolean;ZZLandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
