.class public final Landroidx/car/app/notification/CarPendingIntent;
.super Ljava/lang/Object;
.source "CarPendingIntent.java"


# static fields
.field static final CAR_APP_ACTIVITY_CLASSNAME:Ljava/lang/String; = "androidx.car.app.activity.CarAppActivity"

.field static final COMPONENT_EXTRA_KEY:Ljava/lang/String; = "androidx.car.app.notification.COMPONENT_EXTRA_KEY"

.field private static final FLAG_MUTABLE:I = 0x2000000

.field private static final NAVIGATION_URI_PREFIX:Ljava/lang/String; = "geo:"

.field private static final PHONE_URI_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SEARCH_QUERY_PARAMETER:Ljava/lang/String; = "q"

.field private static final SEARCH_QUERY_PARAMETER_SPLITTER:Ljava/lang/String; = "q="


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method private static createForAutomotive(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 159
    .local v1, "intentComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "androidx.car.app.activity.CarAppActivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static createForProjected(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 149
    const-string v0, "androidx.car.app.notification.COMPONENT_EXTRA_KEY"

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-class v0, Landroidx/car/app/notification/CarAppNotificationBroadcastReceiver;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getCarApp(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 101
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p0, p2}, Landroidx/car/app/notification/CarPendingIntent;->validateIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 106
    const v0, -0x4000001

    and-int/2addr p3, v0

    .line 107
    const/high16 v0, 0x2000000

    or-int/2addr p3, v0

    .line 109
    invoke-static {p0}, Landroidx/car/app/utils/CommonUtils;->isAutomotiveOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, p1, p2, p3}, Landroidx/car/app/notification/CarPendingIntent;->createForAutomotive(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/car/app/notification/CarPendingIntent;->createForProjected(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getQueryString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .line 238
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "q"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "queries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    .line 243
    .end local v0    # "queries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "schemeSpecificPart":Ljava/lang/String;
    const-string v3, "q="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    aget-object v1, v3, v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    :goto_1
    return-object v1
.end method

.method private static isLatitudeLongitude(Ljava/lang/String;)Z
    .locals 4
    .param p0, "possibleLatitudeLongitude"    # Ljava/lang/String;

    .line 214
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 218
    :try_start_0
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 219
    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return v1

    .line 221
    :catch_0
    move-exception v1

    .line 225
    :cond_0
    return v3
.end method

.method static validateIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 127
    .local v2, "intentComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent does not have the CarAppService\'s ComponentName as its target"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "androidx.car.app.action.NAVIGATE"

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-static {p1}, Landroidx/car/app/notification/CarPendingIntent;->validateNavigationIntentIsValid(Landroid/content/Intent;)V

    goto :goto_1

    .line 138
    :cond_1
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    if-nez v2, :cond_3

    .line 141
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "The intent is not for a supported action"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Explicitly starting a separate app is not supported"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_4
    :goto_0
    invoke-static {p1}, Landroidx/car/app/notification/CarPendingIntent;->validatePhoneIntentIsValid(Landroid/content/Intent;)V

    .line 145
    :goto_1
    return-void
.end method

.method private static validateNavigationIntentIsValid(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "data":Ljava/lang/String;
    :goto_0
    const-string v1, "geo:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroidx/car/app/notification/CarPendingIntent;->getQueryString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/notification/CarPendingIntent;->isLatitudeLongitude(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Navigation intent has neither a location nor a query string"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_2
    :goto_1
    return-void

    .line 197
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Navigation intent has a malformed uri"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validatePhoneIntentIsValid(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "data":Ljava/lang/String;
    :goto_0
    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 184
    return-void

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Phone intent cannot have a component"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Phone intent data is not properly formatted"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
