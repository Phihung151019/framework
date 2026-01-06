.class Lcom/samsung/android/game/FgCheckThread$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 3
    .param p1, "pauseComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 180
    if-nez p1, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notePauseComponent(), received pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FgCheckThread"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v0, p4}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 5
    .param p1, "resumeComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 160
    if-nez p1, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v1, v0, p4}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v1, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteResumeComponent(), received pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FgCheckThread"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmFocusedPkg(Lcom/samsung/android/game/FgCheckThread;)Lcom/samsung/android/game/PkgWithUserId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v2, v1}, Lcom/samsung/android/game/FgCheckThread;->sendResumeMessage(Lcom/samsung/android/game/PkgWithUserId;)V

    .line 176
    :cond_2
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 5
    .param p1, "stopComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 195
    if-nez p1, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v1}, Lcom/samsung/android/game/FgCheckThread;->getForegroundPkgName()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "foregroundPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v2, v0}, Lcom/samsung/android/game/FgCheckThread;->isForeground(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmFocusedPkg(Lcom/samsung/android/game/FgCheckThread;)Lcom/samsung/android/game/PkgWithUserId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "focusedPkgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noteStopComponent(), received pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", focusedPkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FgCheckThread"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v3}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v3}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v4, v0, p4}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v3}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$msendFocusOutConditionally(Lcom/samsung/android/game/FgCheckThread;)V

    .line 211
    :cond_2
    return-void

    .line 202
    .end local v2    # "focusedPkgName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method
