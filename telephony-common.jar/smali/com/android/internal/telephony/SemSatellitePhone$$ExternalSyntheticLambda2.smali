.class public final synthetic Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SemSatellitePhone;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/SemSatellitePhone;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/SemSatellitePhone;

    check-cast p1, Landroid/location/Location;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->$r8$lambda$ssCHTseMu6vXxxGbfL4dnZeevOY(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/location/Location;)V

    return-void
.end method
