.class public final synthetic Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;ILandroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    iput p2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/IIntegerConsumer;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->$r8$lambda$QxYydMJEAtMsAiWI_6W5boUVri8(Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;ILandroid/telephony/IIntegerConsumer;)V

    return-void
.end method
