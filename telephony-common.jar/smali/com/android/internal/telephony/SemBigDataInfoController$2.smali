.class Lcom/android/internal/telephony/SemBigDataInfoController$2;
.super Ljava/lang/Object;
.source "SemBigDataInfoController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemBigDataInfoController;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemBigDataInfoController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$2;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 1

    .line 667
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$2;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryStats(Lcom/android/internal/telephony/SemBigDataInfoController;Lcom/android/internal/app/IBatteryStats;)V

    return-void
.end method
