.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    return-void
.end method

.method private isActivityStartingAllowed(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 320
    return v1

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 328
    .local v2, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    if-eqz v2, :cond_3

    .line 329
    const-string v0, "android.intent.category.HOME"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmPm(Lcom/android/commands/monkey/Monkey;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    const-wide/16 v8, 0x0

    move-object v6, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 333
    .local p1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 334
    .local v0, "launcherPackage":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    .line 335
    return v1

    .line 340
    .end local v0    # "launcherPackage":Ljava/lang/String;
    .end local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "intent":Landroid/content/Intent;
    .local p1, "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 338
    .restart local v6    # "intent":Landroid/content/Intent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v1, "** Failed talking with package manager!"

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 339
    return v4

    .line 329
    .end local v6    # "intent":Landroid/content/Intent;
    .local p1, "intent":Landroid/content/Intent;
    :cond_2
    move-object v6, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 328
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v6, p1

    .line 342
    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_1
    return v4
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 346
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 347
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    // activityResuming("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 351
    .local v1, "allow":Z
    :goto_0
    if-nez v1, :cond_2

    .line 352
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_2

    .line 353
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string v4, "Allowing"

    goto :goto_1

    :cond_1
    const-string v4, "Rejecting"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resume of package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 357
    :cond_2
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 358
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 359
    return v1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/commands/monkey/Monkey$ActivityController;->isActivityStartingAllowed(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 301
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I

    move-result v1

    if-lez v1, :cond_1

    .line 308
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 309
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v4, "Allowing"

    goto :goto_0

    :cond_0
    const-string v4, "Rejecting"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 311
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 313
    .end local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_1
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 314
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    .line 315
    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .line 365
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 366
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// CRASH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 367
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Short Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 368
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Long Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 369
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 370
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Changelist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 371
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 372
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\n// "

    invoke-virtual {p7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 373
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 375
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 380
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAppCrashBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 386
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, p1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V

    .line 388
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 388
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .line 401
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 402
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// NOT RESPONDING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v1, p3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 404
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 406
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAnrTraces(Lcom/android/commands/monkey/Monkey;Z)V

    .line 409
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestDumpsysMemInfo(Lcom/android/commands/monkey/Monkey;Z)V

    .line 410
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestProcRank(Lcom/android/commands/monkey/Monkey;Z)V

    .line 411
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAnrBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 413
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, p1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V

    .line 415
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreTimeouts(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 418
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 419
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 423
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2

    .line 415
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 427
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 428
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// WATCHDOG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 429
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 431
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestWatchdogBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;Z)V

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 443
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 445
    :try_start_2
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v1

    .line 447
    :goto_1
    goto :goto_0

    .line 449
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, -0x1

    :cond_4
    return v3

    .line 449
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 441
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method
