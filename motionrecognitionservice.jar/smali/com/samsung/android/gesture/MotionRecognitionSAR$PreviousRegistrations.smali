.class Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviousRegistrations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    }
.end annotation


# instance fields
.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;",
            ">;"
        }
    .end annotation
.end field

.field mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;


# direct methods
.method constructor <init>()V
    .locals 7

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    .line 1117
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;-><init>(ZILjava/lang/String;J)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    .line 1118
    return-void
.end method


# virtual methods
.method public add(ZILjava/lang/String;J)V
    .locals 7
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "isRegister":Z
    .end local p2    # "serviceType":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "currTime":J
    .local v2, "isRegister":Z
    .local v3, "serviceType":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "currTime":J
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;-><init>(ZILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1134
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    .line 1135
    .local v2, "history":Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    iget-boolean v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    if-eqz v3, :cond_0

    .line 1136
    const-string v3, "+ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1138
    :cond_0
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :goto_1
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget v4, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .end local v2    # "history":Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public lastIntentHistory(ZILjava/lang/String;J)V
    .locals 2
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput-boolean p1, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput p2, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput-object p3, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    .line 1129
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    invoke-static {v1, p4, p5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->-$$Nest$mgetFormattedStringFromTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    .line 1130
    return-void
.end method

.method public miniDump()Ljava/lang/String;
    .locals 3

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-boolean v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    if-eqz v1, :cond_0

    const-string v1, "On"

    goto :goto_0

    :cond_0
    const-string v1, "Off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
