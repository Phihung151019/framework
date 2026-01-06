.class Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;
.super Ljava/lang/Thread;
.source "SurveyLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendingThread"
.end annotation


# instance fields
.field mHandler:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

.field final synthetic this$0:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->this$0:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->mHandler:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 174
    return-void
.end method

.method public run()V
    .locals 2

    .line 164
    const-string v0, "SurveyLogSenderUWB"

    const-string v1, "Thread run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 166
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->this$0:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;-><init>(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->mHandler:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

    .line 167
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 168
    return-void
.end method
