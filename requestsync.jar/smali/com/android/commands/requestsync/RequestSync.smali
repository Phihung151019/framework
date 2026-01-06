.class public Lcom/android/commands/requestsync/RequestSync;
.super Ljava/lang/Object;
.source "RequestSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/requestsync/RequestSync$Operation;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mArgs:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mExemptionFlag:I

.field private mExtras:Landroid/os/Bundle;

.field private mNextArg:I

.field private mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

.field private mPeriodicIntervalSeconds:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccount(Lcom/android/commands/requestsync/RequestSync;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthority(Lcom/android/commands/requestsync/RequestSync;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExemptionFlag(Lcom/android/commands/requestsync/RequestSync;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtras(Lcom/android/commands/requestsync/RequestSync;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeriodicIntervalSeconds(Lcom/android/commands/requestsync/RequestSync;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/requestsync/RequestSync;->mPeriodicIntervalSeconds:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 96
    :try_start_0
    new-instance v0, Lcom/android/commands/requestsync/RequestSync;

    invoke-direct {v0}, Lcom/android/commands/requestsync/RequestSync;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/requestsync/RequestSync;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 99
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 105
    :goto_1
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 267
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 268
    return-object v0

    .line 269
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    aget-object v0, v0, v1

    return-object v0

    .line 272
    :cond_1
    return-object v1
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .line 277
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 282
    return-object v0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 280
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private nextOption()Ljava/lang/String;
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 240
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 241
    return-object v3

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    aget-object v0, v0, v2

    .line 244
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    return-object v3

    .line 247
    :cond_1
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 248
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    return-object v3

    .line 251
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    :cond_3
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 257
    return-object v0

    .line 260
    :cond_4
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 261
    return-object v0

    .line 237
    .end local v0    # "arg":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 238
    .local v0, "prev":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseArgs()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->REQUEST_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 140
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "remove-periodic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "add-periodic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 148
    :pswitch_0
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 149
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->REMOVE_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    goto :goto_2

    .line 143
    :pswitch_1
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 144
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->ADD_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 145
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mPeriodicIntervalSeconds:I

    .line 146
    nop

    .line 155
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextOption()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "opt":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 156
    const-string v0, "-h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "--help"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1a

    .line 159
    :cond_2
    const-string v0, "-n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "--account-name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_19

    .line 161
    :cond_3
    const-string v0, "-t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "--account-type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_18

    .line 163
    :cond_4
    const-string v0, "-a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "--authority"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_17

    .line 165
    :cond_5
    const-string v0, "--is"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "--ignore-settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_16

    .line 167
    :cond_6
    const-string v0, "--ib"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "--ignore-backoff"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_15

    .line 169
    :cond_7
    const-string v0, "--dd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "--discard-deletions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_14

    .line 171
    :cond_8
    const-string v0, "--nr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "--no-retry"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_13

    .line 173
    :cond_9
    const-string v0, "--ex"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "--expedited"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_12

    .line 175
    :cond_a
    const-string v0, "-i"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "--initialize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_11

    .line 177
    :cond_b
    const-string v0, "-m"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "--manual"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_10

    .line 179
    :cond_c
    const-string v0, "--od"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "--override-deletions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_f

    .line 181
    :cond_d
    const-string v0, "-u"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "--upload-only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_e

    .line 183
    :cond_e
    const-string v0, "--rc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "--require-charging"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_d

    .line 185
    :cond_f
    const-string v0, "--ej"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "--schedule-as-ej"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_c

    .line 187
    :cond_10
    const-string v0, "-e"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "--es"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "--extra-string"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_b

    .line 191
    :cond_11
    const-string v0, "--esn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "--extra-string-null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_a

    .line 194
    :cond_12
    const-string v0, "--ei"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "--extra-int"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_9

    .line 198
    :cond_13
    const-string v0, "--el"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "--extra-long"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_8

    .line 202
    :cond_14
    const-string v0, "--ef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "--extra-float"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_7

    .line 206
    :cond_15
    const-string v0, "--ed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "--extra-double"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_6

    .line 210
    :cond_16
    const-string v0, "--ez"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "--extra-bool"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_5

    .line 215
    :cond_17
    const-string v0, "-f"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "--foreground"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4

    .line 218
    :cond_18
    const-string v0, "-F"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "--top"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3

    .line 222
    :cond_19
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 224
    return v1

    .line 219
    :cond_1a
    :goto_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    goto/16 :goto_2

    .line 216
    :cond_1b
    :goto_4
    iput v2, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    goto/16 :goto_2

    .line 211
    :cond_1c
    :goto_5
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 207
    :cond_1d
    :goto_6
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 210
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 203
    :cond_1e
    :goto_7
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 206
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 199
    :cond_1f
    :goto_8
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 195
    :cond_20
    :goto_9
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 192
    :cond_21
    :goto_a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "key":Ljava/lang/String;
    goto/16 :goto_2

    .line 188
    :cond_22
    :goto_b
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 190
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 186
    :cond_23
    :goto_c
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "schedule_as_expedited_job"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 184
    :cond_24
    :goto_d
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "require_charging"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 182
    :cond_25
    :goto_e
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "upload"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 180
    :cond_26
    :goto_f
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "deletions_override"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 178
    :cond_27
    :goto_10
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "force"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 176
    :cond_28
    :goto_11
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "initialize"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 174
    :cond_29
    :goto_12
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "expedited"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 172
    :cond_2a
    :goto_13
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "do_not_retry"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 170
    :cond_2b
    :goto_14
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "discard_deletions"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 168
    :cond_2c
    :goto_15
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "ignore_backoff"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 166
    :cond_2d
    :goto_16
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "ignore_settings"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 164
    :cond_2e
    :goto_17
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    goto/16 :goto_2

    .line 162
    :cond_2f
    :goto_18
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    goto/16 :goto_2

    .line 160
    :cond_30
    :goto_19
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    goto/16 :goto_2

    .line 157
    :cond_31
    :goto_1a
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 158
    return v1

    .line 228
    :cond_32
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_33

    .line 229
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 230
    return v1

    .line 232
    :cond_33
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x55c5b9b9 -> :sswitch_1
        0x304ef5c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private run([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 111
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->parseArgs()Z

    move-result v1

    .line 112
    .local v1, "ok":Z
    if-eqz v1, :cond_4

    .line 113
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 116
    .local v2, "account":Landroid/accounts/Account;
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Requesting sync for: \n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 117
    if-eqz v2, :cond_1

    .line 118
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "  Account: %s (%s)\n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 120
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "  Account: all\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 123
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, "All"

    :goto_2
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "  Authority: %s\n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 125
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 126
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "  Extras:\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 127
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    %s: %s\n"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 129
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_3

    .line 132
    :cond_3
    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccount:Landroid/accounts/Account;

    .line 134
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    invoke-virtual {v0, p0}, Lcom/android/commands/requestsync/RequestSync$Operation;->invoke(Lcom/android/commands/requestsync/RequestSync;)V

    .line 136
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_4
    return-void
.end method

.method private static showUsage()V
    .locals 2

    .line 286
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:\n\n  requestsync [options]\n    With no options, a sync will be requested for all account and all sync\n    authorities with no extras.\n    Basic options:\n       -h|--help: Display this message\n       -n|--account-name <ACCOUNT-NAME>\n       -t|--account-type <ACCOUNT-TYPE>\n       -a|--authority <AUTHORITY>\n    App-standby related options\n\n       -f|--foreground (defeat app-standby job throttling, but not battery saver)\n       -F|--top (defeat app-standby job throttling and battery saver)\n    ContentResolver extra options:\n      --is|--ignore-settings: Add SYNC_EXTRAS_IGNORE_SETTINGS\n      --ib|--ignore-backoff: Add SYNC_EXTRAS_IGNORE_BACKOFF\n      --dd|--discard-deletions: Add SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS\n      --nr|--no-retry: Add SYNC_EXTRAS_DO_NOT_RETRY\n      --ex|--expedited: Add SYNC_EXTRAS_EXPEDITED\n      -i|--initialize: Add SYNC_EXTRAS_INITIALIZE\n      --m|--manual: Add SYNC_EXTRAS_MANUAL\n      --od|--override-deletions: Add SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS\n      -u|--upload-only: Add SYNC_EXTRAS_UPLOAD\n      --rc|--require-charging: Add SYNC_EXTRAS_REQUIRE_CHARGING\n    Custom extra options:\n      -e|--es|--extra-string <KEY> <VALUE>\n      --esn|--extra-string-null <KEY>\n      --ei|--extra-int <KEY> <VALUE>\n      --el|--extra-long <KEY> <VALUE>\n      --ef|--extra-float <KEY> <VALUE>\n      --ed|--extra-double <KEY> <VALUE>\n      --ez|--extra-bool <KEY> <VALUE>\n\n  requestsync add-periodic INTERVAL-SECOND [options]\n  requestsync remove-periodic [options]\n    Mandatory options:\n      -n|--account-name <ACCOUNT-NAME>\n      -t|--account-type <ACCOUNT-TYPE>\n      -a|--authority <AUTHORITY>\n    Also takes the above extra options.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    return-void
.end method
