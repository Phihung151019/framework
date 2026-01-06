.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$0:I

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$0:I

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$1:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$rhTOpWfln-pbE3NeBFusHfYA8fw(ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method
