.class Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ExposureToLuxMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EV2L_History"
.end annotation


# instance fields
.field m_brightness:F

.field m_exposure:F

.field m_lux:F

.field m_time:J

.field m_timeStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1126
    iput-object p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;)V

    return-void
.end method


# virtual methods
.method public setBrightness(F)V
    .locals 0
    .param p1, "bri"    # F

    .line 1138
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    .line 1139
    return-void
.end method

.method public setExposure(F)V
    .locals 0
    .param p1, "exp"    # F

    .line 1134
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    .line 1135
    return-void
.end method

.method public setLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 1142
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_lux:F

    .line 1143
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "curTime"    # J

    .line 1146
    iput-wide p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_time:J

    .line 1147
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->-$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/ExposureToLuxMapping;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_timeStr:Ljava/lang/String;

    .line 1148
    return-void
.end method
