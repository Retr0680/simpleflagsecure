.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  set_exempt_th_force_grouping [true|false]\n  redact_otp_from_untrusted_listeners [true|false]\n"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/notification/NotificationManagerService;

    .line 124
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 128
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .locals 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 492
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 493
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 494
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v12, v0

    .line 497
    .local v12, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x0

    .line 498
    .local v0, "verbose":Z
    const/4 v3, 0x0

    .line 499
    .local v3, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    const/4 v6, 0x0

    .line 500
    .local v6, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    const/4 v7, 0x0

    .line 501
    .local v7, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/4 v8, 0x0

    .line 502
    .local v8, "mediaStyle":Landroid/app/Notification$MediaStyle;
    const/4 v9, 0x0

    .line 504
    .local v9, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v10, 0x0

    move v13, v0

    move-object v14, v3

    move-object v15, v6

    move-object v3, v7

    move-object/from16 v16, v8

    move-object v6, v9

    .line 505
    .end local v0    # "verbose":Z
    .end local v7    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v8    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .end local v9    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v3, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v6, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v10, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v15, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v16, "mediaStyle":Landroid/app/Notification$MediaStyle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "opt":Ljava/lang/String;
    const-string/jumbo v8, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    move-object/from16 v17, v10

    .end local v10    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v17, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_11

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "large":Z
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v18

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, -0x1

    const/4 v9, 0x2

    const/16 v22, 0x0

    sparse-switch v18, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v10, "large-icon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "--verbose"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "--line"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "--icon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "--help"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x1c

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "--bigtext"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x15

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "--bigText"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x14

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "--largeicon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v10, "--intent"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x10

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "--picture"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v10, "largeicon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x8

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "--content-intent"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "--big-text"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v10, "title"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v10, v20

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "--wtf"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v10, "icon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xc

    goto/16 :goto_2

    :sswitch_10
    const-string v10, "-v"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v10, v22

    goto/16 :goto_2

    :sswitch_11
    const-string v10, "-t"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v9

    goto/16 :goto_2

    :sswitch_12
    const-string v10, "-i"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xa

    goto/16 :goto_2

    :sswitch_13
    const-string v10, "-h"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x1b

    goto/16 :goto_2

    :sswitch_14
    const-string v10, "-c"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xd

    goto/16 :goto_2

    :sswitch_15
    const-string v10, "-S"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x12

    goto :goto_2

    :sswitch_16
    const-string v10, "-I"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_17
    const-string v10, "--large-icon"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_18
    const-string v10, "--conversation"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x1a

    goto :goto_2

    :sswitch_19
    const-string/jumbo v10, "intent"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v10, "content-intent"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xf

    goto :goto_2

    :sswitch_1b
    const-string v10, "--title"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v10, v19

    goto :goto_2

    :sswitch_1c
    const-string v10, "--style"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x13

    goto :goto_2

    :sswitch_1d
    const-string v10, "--message"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x19

    goto :goto_2

    :goto_1
    move/from16 v10, v21

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 667
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return v22

    .line 657
    :pswitch_0
    if-eqz v6, :cond_1

    .line 661
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 662
    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 658
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "--conversation requires --style messaging"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 639
    :pswitch_1
    if-eqz v6, :cond_3

    .line 643
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 644
    .local v8, "arg":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 645
    .local v10, "parts":[Ljava/lang/String;
    move/from16 v23, v9

    array-length v9, v10

    move/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "large":Z
    .local v24, "large":Z
    if-le v9, v0, :cond_2

    .line 646
    aget-object v0, v10, v0

    move-object v9, v7

    move-object/from16 v18, v8

    .end local v7    # "opt":Ljava/lang/String;
    .end local v8    # "arg":Ljava/lang/String;
    .local v9, "opt":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v25, v9

    .end local v9    # "opt":Ljava/lang/String;
    .local v25, "opt":Ljava/lang/String;
    aget-object v9, v10, v22

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v3

    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 649
    .end local v18    # "arg":Ljava/lang/String;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    .restart local v8    # "arg":Ljava/lang/String;
    :cond_2
    move-object/from16 v25, v7

    move-object/from16 v18, v8

    .end local v7    # "opt":Ljava/lang/String;
    .end local v8    # "arg":Ljava/lang/String;
    .restart local v18    # "arg":Ljava/lang/String;
    .restart local v25    # "opt":Ljava/lang/String;
    aget-object v0, v10, v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 651
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v10

    .end local v10    # "parts":[Ljava/lang/String;
    .local v19, "parts":[Ljava/lang/String;
    const-string v10, "Them"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    .line 653
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    .line 649
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 655
    move-object/from16 v18, v3

    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 640
    .end local v18    # "arg":Ljava/lang/String;
    .end local v19    # "parts":[Ljava/lang/String;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_3
    move/from16 v24, v0

    move-object/from16 v25, v7

    .end local v0    # "large":Z
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "--message requires --style messaging"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v7    # "opt":Ljava/lang/String;
    :pswitch_2
    move/from16 v24, v0

    move-object/from16 v25, v7

    .end local v0    # "large":Z
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 636
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 637
    move-object/from16 v18, v3

    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 634
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "--line requires --style inbox"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v7    # "opt":Ljava/lang/String;
    :pswitch_3
    move/from16 v24, v0

    move-object/from16 v25, v7

    .end local v0    # "large":Z
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 620
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "pictureSpec":Ljava/lang/String;
    invoke-virtual {v1, v11, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 622
    .local v7, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_6

    .line 625
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 626
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v9, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_5

    .line 627
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v3

    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 629
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v18, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 623
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_6
    move-object/from16 v18, v3

    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad picture spec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    .end local v0    # "pictureSpec":Ljava/lang/String;
    .end local v7    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_7
    move-object/from16 v18, v3

    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v7, "opt":Ljava/lang/String;
    :pswitch_4
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object/from16 v25, v7

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 614
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 615
    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    goto/16 :goto_c

    .line 612
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    :pswitch_5
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object/from16 v25, v7

    move/from16 v23, v9

    const/4 v0, 0x1

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "styleSpec":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_9
    goto :goto_3

    :sswitch_1e
    const-string/jumbo v0, "media"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v9, v20

    goto :goto_4

    :sswitch_1f
    const-string/jumbo v0, "inbox"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v9, v23

    goto :goto_4

    :sswitch_20
    const-string v7, "bigpicture"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v9, v0

    goto :goto_4

    :sswitch_21
    const-string v0, "bigtext"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v9, v22

    goto :goto_4

    :sswitch_22
    const-string/jumbo v0, "messaging"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v9, v19

    goto :goto_4

    :goto_3
    move/from16 v9, v21

    :goto_4
    packed-switch v9, :pswitch_data_1

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unrecognized notification style: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_6
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 603
    .end local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v0, "mediaStyle":Landroid/app/Notification$MediaStyle;
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 604
    move-object/from16 v16, v0

    goto :goto_5

    .line 592
    .end local v0    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .restart local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    :pswitch_7
    const-string v0, "You"

    .line 593
    .local v0, "name":Ljava/lang/String;
    const-string v7, "--user"

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 594
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 595
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 597
    :cond_a
    new-instance v7, Landroid/app/Notification$MessagingStyle;

    new-instance v8, Landroid/app/Person$Builder;

    invoke-direct {v8}, Landroid/app/Person$Builder;-><init>()V

    .line 598
    invoke-virtual {v8, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v6, v7

    .line 599
    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 600
    goto :goto_5

    .line 588
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_8
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 589
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v0, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 590
    move-object/from16 v18, v0

    goto :goto_5

    .line 584
    .end local v0    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_9
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v14, v0

    .line 585
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 586
    goto :goto_5

    .line 580
    :pswitch_a
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v15, v0

    .line 581
    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 582
    nop

    .line 609
    :goto_5
    move-object v10, v5

    move/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v3, v18

    goto/16 :goto_d

    .line 545
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .local v3, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    :pswitch_b
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object/from16 v25, v7

    move/from16 v23, v9

    const/4 v0, 0x1

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v3, 0x0

    .line 546
    .local v3, "intentKind":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const-string v9, "broadcast"

    const-string/jumbo v10, "service"

    sparse-switch v8, :sswitch_data_2

    :cond_b
    goto :goto_6

    :sswitch_23
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_7

    :sswitch_24
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v22

    goto :goto_7

    :sswitch_25
    const-string v0, "activity"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v23

    goto :goto_7

    :goto_6
    move/from16 v0, v21

    :goto_7
    packed-switch v0, :pswitch_data_2

    goto :goto_8

    .line 550
    :pswitch_c
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 552
    :goto_8
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v7

    .line 553
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xyz:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "verbose":Z
    .end local v14    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v19, "verbose":Z
    .local v20, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_9

    .line 553
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v13    # "verbose":Z
    .restart local v14    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    :cond_c
    move/from16 v19, v13

    move-object/from16 v20, v14

    .line 558
    .end local v13    # "verbose":Z
    .end local v14    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    :goto_9
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v8, 0xc000000

    if-eqz v0, :cond_d

    .line 559
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move/from16 v9, v22

    invoke-static {v5, v9, v7, v8, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v10, v5

    move-object v14, v6

    move-object/from16 v13, v17

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 563
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_d
    move/from16 v9, v22

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 564
    invoke-static {v5, v9, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v10, v5

    move-object v14, v6

    move-object/from16 v13, v17

    .restart local v0    # "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 568
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_e
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v8, v6

    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v8, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v6, 0x0

    move-object v13, v8

    .end local v8    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v13, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/high16 v8, 0xc000000

    move-object v14, v13

    move-object/from16 v13, v17

    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v10, v5

    .line 573
    .end local v5    # "context":Landroid/content/Context;
    .restart local v0    # "pi":Landroid/app/PendingIntent;
    .local v10, "context":Landroid/content/Context;
    :goto_a
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 574
    goto/16 :goto_c

    .line 507
    .end local v10    # "context":Landroid/content/Context;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .local v3, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v7, "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_d
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    goto :goto_b

    .line 522
    .end local v10    # "context":Landroid/content/Context;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_e
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v0, 0x1

    .line 527
    .end local v24    # "large":Z
    .restart local v0    # "large":Z
    :goto_b
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "iconSpec":Ljava/lang/String;
    invoke-virtual {v1, v11, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 529
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_f

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: invalid icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    return v21

    .line 533
    :cond_f
    if-eqz v0, :cond_10

    .line 534
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 535
    const/4 v0, 0x0

    goto :goto_c

    .line 537
    :cond_10
    move-object v6, v5

    .line 539
    .end local v13    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v6, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v13, v6

    move-object v6, v14

    move-object/from16 v3, v18

    move-object/from16 v14, v20

    goto :goto_d

    .line 515
    .end local v10    # "context":Landroid/content/Context;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v25    # "opt":Ljava/lang/String;
    .local v3, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v5, "context":Landroid/content/Context;
    .local v6, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_f
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 516
    nop

    .line 670
    .end local v10    # "context":Landroid/content/Context;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v24    # "large":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :goto_c
    move-object v6, v14

    move-object/from16 v3, v18

    move-object/from16 v14, v20

    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v25    # "opt":Ljava/lang/String;
    goto :goto_d

    .line 510
    .end local v10    # "context":Landroid/content/Context;
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v19    # "verbose":Z
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v7    # "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_10
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    move-object v14, v6

    .end local v0    # "large":Z
    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v24    # "large":Z
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v0, 0x1

    .line 511
    .end local v19    # "verbose":Z
    .local v0, "verbose":Z
    move/from16 v19, v0

    move-object/from16 v14, v20

    .line 670
    .end local v0    # "verbose":Z
    .end local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v24    # "large":Z
    .restart local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v19    # "verbose":Z
    :goto_d
    move-object v5, v10

    move-object v10, v13

    move/from16 v13, v19

    goto/16 :goto_0

    .line 672
    .end local v10    # "context":Landroid/content/Context;
    .end local v19    # "verbose":Z
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v7    # "opt":Ljava/lang/String;
    .local v13, "verbose":Z
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_11
    move-object/from16 v18, v3

    move-object v10, v5

    move-object/from16 v25, v7

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v17

    const/16 v21, -0x1

    move-object v14, v6

    .end local v3    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v14, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v18    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v19    # "verbose":Z
    .restart local v20    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 673
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "text":Ljava/lang/String;
    if-eqz v6, :cond_18

    if-nez v3, :cond_12

    move-object/from16 v17, v3

    goto/16 :goto_13

    .line 679
    :cond_12
    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 681
    if-nez v13, :cond_13

    .line 683
    const v0, 0x1080077

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 685
    :cond_13
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 688
    :goto_e
    move/from16 v5, p3

    invoke-virtual {v1, v4, v5}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 690
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 691
    .local v8, "n":Landroid/app/Notification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "posting:\n  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "posting: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "NotificationManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object v7, v3

    .end local v3    # "text":Ljava/lang/String;
    .local v7, "text":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 695
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 694
    move-object/from16 v17, v7

    .end local v7    # "text":Ljava/lang/String;
    .local v17, "text":Ljava/lang/String;
    const/16 v7, 0x7e4

    move-object/from16 v5, p2

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 697
    if-eqz v19, :cond_17

    .line 698
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 699
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 698
    const/16 v5, 0x7e4

    invoke-virtual {v0, v4, v6, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 700
    .local v0, "nr":Lcom/android/server/notification/NotificationRecord;
    const/4 v3, 0x3

    move/from16 v26, v3

    move-object v3, v0

    move/from16 v0, v26

    .local v0, "tries":I
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_f
    add-int/lit8 v7, v0, -0x1

    .end local v0    # "tries":I
    .local v7, "tries":I
    if-lez v0, :cond_15

    .line 701
    if-eqz v3, :cond_14

    goto :goto_11

    .line 703
    :cond_14
    :try_start_0
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const-wide/16 v23, 0x1f4

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_10

    .line 705
    :catch_0
    move-exception v0

    .line 707
    :goto_10
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 708
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 707
    invoke-virtual {v0, v4, v6, v5, v9}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v7

    goto :goto_f

    .line 710
    .end local v7    # "tries":I
    :cond_15
    :goto_11
    if-nez v3, :cond_16

    .line 711
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_12

    .line 713
    :cond_16
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string v0, "  "

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v0, v10, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_12

    .line 697
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_17
    const/4 v9, 0x0

    .line 718
    :goto_12
    return v9

    .line 674
    .end local v8    # "n":Landroid/app/Notification;
    .end local v17    # "text":Ljava/lang/String;
    .local v3, "text":Ljava/lang/String;
    :cond_18
    move-object/from16 v17, v3

    .line 675
    .end local v3    # "text":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :goto_13
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    return v21

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74789999 -> :sswitch_1d
        -0x603263ef -> :sswitch_1c
        -0x60295f48 -> :sswitch_1b
        -0x4821dd90 -> :sswitch_1a
        -0x468ec964 -> :sswitch_19
        -0x32dd8ddd -> :sswitch_18
        -0x2bc1295 -> :sswitch_17
        0x5bc -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d6 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x5e9 -> :sswitch_10
        0x313c79 -> :sswitch_f
        0x2906389 -> :sswitch_e
        0x6942258 -> :sswitch_d
        0x2a056f7a -> :sswitch_c
        0x2a13d010 -> :sswitch_b
        0x2d3ae234 -> :sswitch_a
        0x302cc35e -> :sswitch_9
        0x487e843c -> :sswitch_8
        0x4a573094 -> :sswitch_7
        0x4bbf1cad -> :sswitch_6
        0x4bcda88d -> :sswitch_5
        0x4f7504e1 -> :sswitch_4
        0x4f757219 -> :sswitch_3
        0x4f76e594 -> :sswitch_2
        0x6789dfe2 -> :sswitch_1
        0x76d66fcb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55d4c8fc -> :sswitch_22
        -0x6cebdd3 -> :sswitch_21
        -0x2a7c002 -> :sswitch_20
        0x5fb2286 -> :sswitch_1f
        0x62f6fe4 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x62b40cf1 -> :sswitch_25
        -0x607e173f -> :sswitch_24
        0x7643c6b5 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z
    .locals 3
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 740
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-eqz v1, :cond_0

    .line 741
    const-string v1, "NotifShellCmd"

    const-string v2, "Bound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v1, 0x1

    return v1

    .line 745
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    goto :goto_1

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 739
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 751
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V
    .locals 6
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    .param p2, "key"    # Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 723
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 724
    .local v1, "sbns":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 725
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    return-void

    .line 725
    :cond_0
    nop

    .line 724
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 730
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_2

    .line 731
    :catch_0
    move-exception v2

    .line 732
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 722
    .end local v1    # "sbns":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 735
    .end local v0    # "i":I
    return-void
.end method

.method private waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V
    .locals 3
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 756
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v1, :cond_0

    .line 757
    const-string v1, "NotifShellCmd"

    const-string v2, "Unbound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 761
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    goto :goto_1

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 755
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 767
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method protected checkShellCommandPermission(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 131
    if-eqz p1, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method ensureChannel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Shell command"

    const/4 v2, 0x3

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 457
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    .line 458
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 457
    invoke-interface {v1, p1, v2}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 461
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 460
    invoke-interface {v2, p1, v4, p1, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 24
    .param p1, "cmd"    # Ljava/lang/String;

    .line 136
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 137
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v3, 0x0

    .line 140
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 141
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 143
    .local v5, "identity":J
    const-string v7, "NotifShellCmd"

    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 144
    :try_start_0
    const-string/jumbo v0, "root"

    move-object v3, v0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v5

    goto/16 :goto_19

    .line 151
    :catch_0
    move-exception v0

    goto :goto_2

    .line 146
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v9, v0

    if-lez v9, :cond_2

    .line 148
    aget-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    .line 154
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    goto :goto_3

    .line 151
    :goto_2
    nop

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "failed to get caller pkg"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 157
    :goto_3
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 159
    .local v9, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: permission denied: callingUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " callingPackage="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const/16 v0, 0xff

    return v0

    .line 168
    :cond_3
    const/16 v0, 0x2d

    const/16 v7, 0x5f

    :try_start_2
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v12, 0x3

    const/4 v13, 0x2

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto/16 :goto_4

    :sswitch_0
    :try_start_3
    const-string v7, "allow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_5

    .line 447
    :catch_1
    move-exception v0

    move-wide/from16 v22, v5

    goto/16 :goto_17

    .line 168
    :sswitch_1
    const-string/jumbo v7, "set_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto/16 :goto_5

    :sswitch_2
    const-string/jumbo v7, "redact_otp_from_untrusted_listeners"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    goto/16 :goto_5

    :sswitch_3
    const-string v7, "disallow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_5

    :sswitch_4
    const-string/jumbo v7, "set_exempt_th_force_grouping"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    goto/16 :goto_5

    :sswitch_5
    const-string/jumbo v7, "reset_assistant_user_set"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_5

    :sswitch_6
    const-string v7, "allow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_5

    :sswitch_7
    const-string/jumbo v7, "set_bubbles"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_5

    :sswitch_8
    const-string/jumbo v7, "post"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto/16 :goto_5

    :sswitch_9
    const-string/jumbo v7, "list"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto/16 :goto_5

    :sswitch_a
    const-string v7, "get"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    goto/16 :goto_5

    :sswitch_b
    const-string/jumbo v7, "unsnooze"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_5

    :sswitch_c
    const-string v7, "get_approved_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_5

    :sswitch_d
    const-string v7, "disallow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v13

    goto :goto_5

    :sswitch_e
    const-string v7, "allow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_5

    :sswitch_f
    const-string/jumbo v7, "snooze"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_5

    :sswitch_10
    const-string/jumbo v7, "notify"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_5

    :sswitch_11
    const-string v7, "disallow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_5

    :sswitch_12
    const-string/jumbo v7, "set_bubbles_channel"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_5

    :sswitch_13
    :try_start_4
    const-string/jumbo v7, "snoozed"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto :goto_5

    :goto_4
    const/4 v0, -0x1

    :goto_5
    const-string v7, "Invalid listener - must be a ComponentName"

    const-string v10, "Invalid assistant - must be a ComponentName"

    const/4 v11, 0x0

    const/16 v18, -0x1

    const-string v14, "1"

    const/16 v19, 0x1

    const-string/jumbo v15, "true"

    packed-switch v0, :pswitch_data_0

    .line 445
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 437
    :pswitch_0
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    goto :goto_6

    :cond_6
    move v15, v8

    goto :goto_7

    :goto_6
    move/from16 v15, v19

    :goto_7
    nop

    .line 439
    .local v15, "allow":I
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "redact_otp_notifications_from_untrusted_listeners"

    invoke-static {v7, v10, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    move-wide/from16 v22, v5

    goto/16 :goto_16

    .line 430
    .end local v0    # "arg":Ljava/lang/String;
    .end local v15    # "allow":I
    :pswitch_1
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 431
    .restart local v0    # "arg":Ljava/lang/String;
    nop

    .line 432
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    goto :goto_8

    :cond_8
    move v15, v8

    goto :goto_9

    :goto_8
    move/from16 v15, v19

    :goto_9
    nop

    .line 433
    .local v15, "exemptTestHarnessFromForceGrouping":Z
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v15}, Lcom/android/server/notification/NotificationManagerService;->setTestHarnessExempted(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 434
    move-wide/from16 v22, v5

    goto/16 :goto_16

    .line 374
    .end local v0    # "arg":Ljava/lang/String;
    .end local v15    # "exemptTestHarnessFromForceGrouping":Z
    :pswitch_2
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 375
    .local v0, "subflag":Ljava/lang/String;
    const-string/jumbo v7, "help"

    if-nez v0, :cond_9

    .line 376
    move-object v0, v7

    goto :goto_a

    .line 377
    :cond_9
    :try_start_7
    const-string v10, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v10, :cond_a

    .line 378
    :try_start_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v0, v10

    .line 380
    :cond_a
    :goto_a
    :try_start_9
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, "flagarg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v14

    .line 382
    .local v14, "key":Ljava/lang/String;
    if-nez v14, :cond_b

    move-object v0, v7

    .line 383
    :cond_b
    const/4 v7, 0x0

    .line 384
    .local v7, "criterion":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 385
    .local v20, "duration":J
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    sparse-switch v15, :sswitch_data_1

    :cond_c
    goto :goto_b

    :sswitch_14
    :try_start_a
    const-string v12, "context"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move/from16 v16, v8

    goto :goto_c

    :sswitch_15
    const-string v12, "criterion"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move/from16 v16, v13

    goto :goto_c

    :sswitch_16
    const-string/jumbo v13, "until"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move/from16 v16, v12

    goto :goto_c

    :sswitch_17
    const-string v12, "for"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v16, 0x4

    goto :goto_c

    :sswitch_18
    const-string v12, "condition"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v12, :cond_c

    move/from16 v16, v19

    goto :goto_c

    :sswitch_19
    :try_start_b
    const-string v12, "duration"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v12, :cond_c

    const/16 v16, 0x5

    goto :goto_c

    :goto_b
    move/from16 v16, v18

    :goto_c
    packed-switch v16, :pswitch_data_1

    .line 397
    :try_start_c
    const-string/jumbo v11, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    return v19

    .line 394
    :pswitch_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide/from16 v20, v12

    .line 395
    goto :goto_d

    .line 389
    :pswitch_4
    move-object v7, v10

    .line 390
    move-wide/from16 v12, v20

    .line 401
    .end local v20    # "duration":J
    .local v12, "duration":J
    :goto_d
    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-gtz v17, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    goto :goto_e

    .line 424
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error: invalid value for --"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 425
    return v19

    .line 402
    :goto_e
    move-wide/from16 v17, v15

    :try_start_d
    new-instance v15, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v15, v11}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>(Lcom/android/server/notification/NotificationShellCmd-IA;)V

    .line 403
    .local v15, "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v8, Landroid/content/ComponentName;

    .line 404
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v21, v0

    .end local v0    # "subflag":Ljava/lang/String;
    .local v21, "subflag":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 403
    invoke-virtual {v15, v11, v8, v0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 407
    invoke-direct {v1, v15}, Lcom/android/server/notification/NotificationShellCmd;->waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    if-nez v0, :cond_f

    .line 408
    :try_start_e
    const-string v0, "error: could not bind a listener in time"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 409
    return v19

    .line 411
    :cond_f
    cmp-long v0, v12, v17

    if-lez v0, :cond_10

    .line 412
    :try_start_f
    const-string/jumbo v0, "snoozing <%s> until time: %s"

    new-instance v2, Ljava/util/Date;

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .local v22, "identity":J
    add-long v5, v16, v12

    :try_start_10
    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 412
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v15, v14, v12, v13}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_f

    .line 447
    .end local v7    # "criterion":Ljava/lang/String;
    .end local v10    # "flagarg":Ljava/lang/String;
    .end local v12    # "duration":J
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    .end local v21    # "subflag":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto/16 :goto_17

    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :catch_3
    move-exception v0

    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    goto/16 :goto_17

    .line 416
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    .restart local v7    # "criterion":Ljava/lang/String;
    .restart local v10    # "flagarg":Ljava/lang/String;
    .restart local v12    # "duration":J
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    .restart local v21    # "subflag":Ljava/lang/String;
    :cond_10
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    const-string/jumbo v0, "snoozing <%s> until criterion: %s"

    filled-new-array {v14, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v15, v14, v7}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_f
    invoke-direct {v1, v15, v14}, Lcom/android/server/notification/NotificationShellCmd;->waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v15}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 422
    invoke-direct {v1, v15}, Lcom/android/server/notification/NotificationShellCmd;->waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V

    .line 423
    .end local v15    # "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    goto/16 :goto_16

    .line 358
    .end local v7    # "criterion":Ljava/lang/String;
    .end local v10    # "flagarg":Ljava/lang/String;
    .end local v12    # "duration":J
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "subflag":Ljava/lang/String;
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_5
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    const/4 v0, 0x0

    .line 359
    .local v0, "mute":Z
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "key":Ljava/lang/String;
    const-string v5, "--mute"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 361
    const/4 v0, 0x1

    .line 362
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 364
    :cond_11
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v5, v2}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsnoozing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v2, v11, v0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_16

    .line 368
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: no snoozed otification matching key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    return v19

    .line 343
    .end local v0    # "mute":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_6
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 345
    .local v2, "sh":Lcom/android/server/notification/SnoozeHelper;
    invoke-virtual {v2}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 346
    .local v6, "nr":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " snoozed, time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11

    .line 349
    invoke-virtual {v2, v11, v7, v8}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " context="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11

    .line 352
    invoke-virtual {v2, v11, v7, v8}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .end local v6    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_10

    .line 355
    :cond_13
    goto/16 :goto_16

    .line 332
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sh":Lcom/android/server/notification/SnoozeHelper;
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_7
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "key":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    .line 334
    .local v2, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz v2, :cond_14

    .line 335
    const-string v5, ""

    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v9, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_16

    .line 337
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: no active notification matching key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    return v19

    .line 327
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_8
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_11

    .line 330
    :cond_15
    goto/16 :goto_16

    .line 324
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_9
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    .line 325
    goto/16 :goto_16

    .line 307
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_a
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "channelId":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 310
    .local v5, "allow":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 311
    .local v6, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 312
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 314
    :cond_16
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v7, v3, v6, v0, v2}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    .line 316
    .local v7, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v7, v5}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 317
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 318
    .local v8, "appUid":I
    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v10, v0, v8, v7}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 320
    goto/16 :goto_16

    .line 290
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    .end local v8    # "appUid":I
    .end local v22    # "identity":J
    .local v5, "identity":J
    :pswitch_b
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "preference":I
    if-gt v2, v12, :cond_17

    if-gez v2, :cond_18

    :cond_17
    goto :goto_12

    .line 297
    :cond_18
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 298
    .local v5, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 299
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 301
    :cond_19
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 302
    .local v6, "appUid":I
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v7, v0, v6, v2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 303
    goto/16 :goto_16

    .line 293
    .end local v5    # "userId":I
    .end local v6    # "appUid":I
    :goto_12
    const-string v5, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    return v18

    .line 276
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "preference":I
    .end local v22    # "identity":J
    .local v5, "identity":J
    :pswitch_c
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 277
    .local v0, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 278
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 280
    :cond_1a
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 281
    .local v2, "approvedAssistant":Landroid/content/ComponentName;
    if-nez v2, :cond_1b

    .line 282
    const-string/jumbo v5, "null"

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 284
    :cond_1b
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    goto/16 :goto_16

    .line 268
    .end local v0    # "userId":I
    .end local v2    # "approvedAssistant":Landroid/content/ComponentName;
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_d
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 269
    .restart local v0    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 270
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 272
    :cond_1c
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 273
    goto/16 :goto_16

    .line 255
    .end local v0    # "userId":I
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_e
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 256
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1d

    .line 257
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    return v18

    .line 260
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 261
    .local v2, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 262
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 264
    :cond_1e
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v5, v0, v2, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 266
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 242
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_f
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 243
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1f

    .line 244
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    return v18

    .line 247
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 248
    .restart local v2    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 249
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 251
    :cond_20
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    move/from16 v6, v19

    invoke-interface {v5, v0, v2, v6}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 253
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 228
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_10
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_21

    .line 230
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    return v18

    .line 233
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 234
    .restart local v2    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 235
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 237
    :cond_22
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v0, v2, v7, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 240
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 214
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_11
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 215
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_23

    .line 216
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    return v18

    .line 219
    :cond_23
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 220
    .restart local v2    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 221
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 223
    :cond_24
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v6, 0x1

    invoke-interface {v5, v0, v2, v6, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 226
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 204
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_12
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 206
    .restart local v2    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 207
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 209
    :cond_25
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v5, v0, v2, v7}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 212
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 193
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_13
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 195
    .restart local v2    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 196
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 198
    :cond_26
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v6, 0x1

    invoke-interface {v5, v0, v2, v6}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 201
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    goto/16 :goto_16

    .line 170
    .end local v22    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_14
    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "mode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 172
    .local v2, "interruptionFilter":I
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_27
    goto :goto_13

    :sswitch_1a
    const-string/jumbo v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v10, 0x0

    goto :goto_14

    :sswitch_1b
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v10, 0x5

    goto :goto_14

    :sswitch_1c
    const-string v5, "all"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v10, 0x4

    goto :goto_14

    :sswitch_1d
    const-string/jumbo v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v10, 0x1

    goto :goto_14

    :sswitch_1e
    const-string/jumbo v5, "priority"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v10, v13

    goto :goto_14

    :sswitch_1f
    const-string v5, "alarms"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v10, v12

    goto :goto_14

    :goto_13
    move/from16 v10, v18

    :goto_14
    packed-switch v10, :pswitch_data_2

    goto :goto_15

    .line 185
    :pswitch_15
    const/4 v2, 0x1

    goto :goto_15

    .line 181
    :pswitch_16
    const/4 v2, 0x4

    .line 182
    goto :goto_15

    .line 178
    :pswitch_17
    const/4 v2, 0x2

    .line 179
    goto :goto_15

    .line 175
    :pswitch_18
    const/4 v2, 0x3

    .line 176
    nop

    .line 187
    :goto_15
    move v5, v2

    .line 188
    .local v5, "filter":I
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v3, v5, v7}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 191
    .end local v0    # "mode":Ljava/lang/String;
    .end local v2    # "interruptionFilter":I
    .end local v5    # "filter":I
    nop

    .line 450
    :goto_16
    goto :goto_18

    .line 447
    :goto_17
    nop

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred. Check logcat for details. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string v2, "NotificationService"

    const-string v5, "Error running shell command"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    const/16 v20, 0x0

    return v20

    .line 154
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v22    # "identity":J
    .local v5, "identity":J
    :catchall_1
    move-exception v0

    move-wide/from16 v22, v5

    .end local v5    # "identity":J
    .restart local v22    # "identity":J
    :goto_19
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_13
        -0x677a47b2 -> :sswitch_12
        -0x4f05a8e6 -> :sswitch_11
        -0x3df868b7 -> :sswitch_10
        -0x3580721a -> :sswitch_f
        -0x19cf0b16 -> :sswitch_e
        -0x199eb9aa -> :sswitch_d
        -0x18b58921 -> :sswitch_c
        -0xa97a41 -> :sswitch_b
        0x18f56 -> :sswitch_a
        0x32b09e -> :sswitch_9
        0x3498a0 -> :sswitch_8
        0xca4be8a -> :sswitch_7
        0x16318b24 -> :sswitch_6
        0x28bd431f -> :sswitch_5
        0x451d09df -> :sswitch_4
        0x4af068f8 -> :sswitch_3
        0x608f7f1b -> :sswitch_2
        0x76556fbd -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
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
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_19
        -0x335692e5 -> :sswitch_18
        0x18cc9 -> :sswitch_17
        0x6a47f5e -> :sswitch_16
        0x16e20ea1 -> :sswitch_15
        0x38b735af -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x545a2fbe -> :sswitch_1f
        -0x4577865c -> :sswitch_1e
        0xddf -> :sswitch_1d
        0x179a1 -> :sswitch_1c
        0x1ad6f -> :sswitch_1b
        0x33af38 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 771
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  set_exempt_th_force_grouping [true|false]\n  redact_otp_from_untrusted_listeners [true|false]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 465
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 466
    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 469
    :cond_1
    const-string/jumbo v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    .line 470
    const-string/jumbo v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    .line 471
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    .line 472
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    .line 473
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 476
    :cond_2
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 477
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, "resid":I
    if-eqz v0, :cond_3

    .line 480
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 479
    :cond_3
    nop

    .line 482
    .end local v0    # "resid":I
    :cond_4
    goto :goto_0

    :cond_5
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 484
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 485
    .local v1, "bits":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 487
    .end local v1    # "bits":[B
    :goto_0
    return-object v1

    .line 474
    :cond_6
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 475
    .local v0, "asUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method
