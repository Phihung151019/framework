.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final greylist APR:Ljava/lang/String; = "Apr"

.field public static final greylist AUG:Ljava/lang/String; = "Aug"

.field public static final greylist DEC:Ljava/lang/String; = "Dec"

.field public static final greylist FEB:Ljava/lang/String; = "Feb"

.field public static final greylist FRI:Ljava/lang/String; = "Fri"

.field public static final greylist GMT:Ljava/lang/String; = "GMT"

.field public static final greylist JAN:Ljava/lang/String; = "Jan"

.field public static final greylist JUL:Ljava/lang/String; = "Jul"

.field public static final greylist JUN:Ljava/lang/String; = "Jun"

.field public static final greylist MAR:Ljava/lang/String; = "Mar"

.field public static final greylist MAY:Ljava/lang/String; = "May"

.field public static final greylist MON:Ljava/lang/String; = "Mon"

.field public static final greylist NOV:Ljava/lang/String; = "Nov"

.field public static final greylist OCT:Ljava/lang/String; = "Oct"

.field public static final greylist SAT:Ljava/lang/String; = "Sat"

.field public static final greylist SEP:Ljava/lang/String; = "Sep"

.field public static final greylist SUN:Ljava/lang/String; = "Sun"

.field public static final greylist THU:Ljava/lang/String; = "Thu"

.field public static final greylist TUE:Ljava/lang/String; = "Tue"

.field public static final greylist WED:Ljava/lang/String; = "Wed"

.field private static final whitelist serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected greylist day:I

.field protected greylist hour:I

.field private greylist javaCal:Ljava/util/Calendar;

.field protected greylist minute:I

.field protected greylist month:I

.field protected greylist second:I

.field protected greylist sipMonth:Ljava/lang/String;

.field protected greylist sipWkDay:Ljava/lang/String;

.field protected greylist wkday:I

.field protected greylist year:I


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 153
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 154
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 155
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 156
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 157
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 158
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 160
    return-void
.end method

.method public constructor greylist <init>(J)V
    .locals 3
    .param p1, "timeMillis"    # J

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 169
    const-string v1, "GMT:0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 172
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 174
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    packed-switch v1, :pswitch_data_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for wkday "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_0
    const-string v1, "Sat"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 192
    goto :goto_0

    .line 188
    :pswitch_1
    const-string v1, "Fri"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 189
    goto :goto_0

    .line 185
    :pswitch_2
    const-string v1, "Thu"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 186
    goto :goto_0

    .line 182
    :pswitch_3
    const-string v1, "Wed"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 183
    goto :goto_0

    .line 179
    :pswitch_4
    const-string v1, "Tue"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 180
    goto :goto_0

    .line 176
    :pswitch_5
    const-string v1, "Mon"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 177
    goto :goto_0

    .line 194
    :pswitch_6
    const-string v1, "Sun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 195
    nop

    .line 201
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 202
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 203
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    packed-switch v1, :pswitch_data_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :pswitch_7
    const-string v1, "Dec"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 239
    goto :goto_1

    .line 235
    :pswitch_8
    const-string v1, "Nov"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 236
    goto :goto_1

    .line 232
    :pswitch_9
    const-string v1, "Oct"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 233
    goto :goto_1

    .line 229
    :pswitch_a
    const-string v1, "Sep"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 230
    goto :goto_1

    .line 226
    :pswitch_b
    const-string v1, "Aug"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 227
    goto :goto_1

    .line 223
    :pswitch_c
    const-string v1, "Jul"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 224
    goto :goto_1

    .line 220
    :pswitch_d
    const-string v1, "Jun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 221
    goto :goto_1

    .line 217
    :pswitch_e
    const-string v1, "May"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 218
    goto :goto_1

    .line 214
    :pswitch_f
    const-string v1, "Apr"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 215
    goto :goto_1

    .line 211
    :pswitch_10
    const-string v1, "Mar"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 212
    goto :goto_1

    .line 208
    :pswitch_11
    const-string v1, "Feb"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 209
    goto :goto_1

    .line 205
    :pswitch_12
    const-string v1, "Jan"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 206
    nop

    .line 244
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 246
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 247
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 248
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 249
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private greylist setJavaCal()V
    .locals 4

    .line 356
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 358
    const-string v1, "GMT:0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 360
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 362
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-eq v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x5

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 364
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-eq v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x2

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 366
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-eq v0, v1, :cond_3

    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x7

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 368
    :cond_3
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-eq v0, v1, :cond_4

    .line 369
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xa

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 370
    :cond_4
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-eq v0, v1, :cond_5

    .line 371
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    iget v3, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 372
    :cond_5
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-eq v0, v1, :cond_6

    .line 373
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xd

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 374
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 3

    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .local v0, "retval":Lgov/nist/javax/sip/header/SIPDate;
    nop

    .line 524
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 526
    :cond_0
    return-object v0

    .line 521
    .end local v0    # "retval":Lgov/nist/javax/sip/header/SIPDate;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist encode()Ljava/lang/String;
    .locals 8

    .line 258
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    const-string v1, "0"

    const-string v2, ""

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dayString":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v0    # "dayString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0    # "dayString":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ge v4, v3, :cond_1

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "hourString":Ljava/lang/String;
    goto :goto_1

    .line 267
    .end local v4    # "hourString":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .restart local v4    # "hourString":Ljava/lang/String;
    :goto_1
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ge v5, v3, :cond_2

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "minuteString":Ljava/lang/String;
    goto :goto_2

    .line 273
    .end local v5    # "minuteString":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    .restart local v5    # "minuteString":Ljava/lang/String;
    :goto_2
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ge v6, v3, :cond_3

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "secondString":Ljava/lang/String;
    goto :goto_3

    .line 279
    .end local v1    # "secondString":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "secondString":Ljava/lang/String;
    :goto_3
    const-string v2, ""

    .line 283
    .local v2, "encoding":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v6, " "

    if-eqz v3, :cond_4

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "GMT"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    return-object v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 138
    :cond_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;

    .line 139
    .local v0, "other":Lgov/nist/javax/sip/header/SIPDate;
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public greylist getDeltaSeconds()I
    .locals 4

    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 514
    .local v0, "ctime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    return v2
.end method

.method public greylist getHour()I
    .locals 1

    .line 333
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    return v0
.end method

.method public greylist getJavaCal()Ljava/util/Calendar;
    .locals 1

    .line 310
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPDate;->setJavaCal()V

    .line 312
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-object v0
.end method

.method public greylist getMinute()I
    .locals 1

    .line 340
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    return v0
.end method

.method public greylist getMonth()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSecond()I
    .locals 1

    .line 347
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return v0
.end method

.method public greylist getWkday()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getYear()I
    .locals 1

    .line 466
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    return v0
.end method

.method public greylist setDay(I)V
    .locals 3
    .param p1, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 411
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 412
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Day of the month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setHour(I)V
    .locals 3
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 475
    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 478
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 479
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMinute(I)V
    .locals 3
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 487
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 491
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 492
    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal minute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMonth(Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Feb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Mar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 426
    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Apr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 428
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "May"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 430
    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 432
    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 433
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 434
    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 435
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Aug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 436
    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 437
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Sep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 438
    const/16 v0, 0x8

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 439
    :cond_8
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Oct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 440
    const/16 v0, 0x9

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 441
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Nov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 442
    const/16 v0, 0xa

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    .line 443
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Dec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 444
    const/16 v0, 0xb

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Month :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSecond(I)V
    .locals 3
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 500
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 504
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    .line 505
    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal second : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setWkday(Ljava/lang/String;)V
    .locals 3
    .param p1, "w"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Mon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Tue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 386
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Wed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 388
    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Thu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 390
    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Fri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 392
    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 393
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 394
    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Week day :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setYear(I)V
    .locals 3
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 456
    if-ltz p1, :cond_0

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 459
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 460
    return-void

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal year : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
