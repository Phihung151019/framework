.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;->f$0:J

    .line 2
    .line 3
    check-cast p1, Landroid/util/Pair;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->$r8$lambda$pbR2oS6vfIGvJaGDT5YXP9N3550(JLandroid/util/Pair;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
