.class Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$5;
.super Ljava/lang/Object;
.source "SemNitzStateMachineImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->showMultitimezonePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$5;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$5;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const-string p1, "click negative"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "multi_time_zone_popup"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
