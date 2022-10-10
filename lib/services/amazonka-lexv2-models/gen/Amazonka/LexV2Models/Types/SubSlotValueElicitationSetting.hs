{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LexV2Models.Types.SubSlotValueElicitationSetting
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexV2Models.Types.SubSlotValueElicitationSetting where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types.PromptSpecification
import Amazonka.LexV2Models.Types.SampleUtterance
import Amazonka.LexV2Models.Types.SlotDefaultValueSpecification
import Amazonka.LexV2Models.Types.WaitAndContinueSpecification
import qualified Amazonka.Prelude as Prelude

-- | Subslot elicitation settings.
--
-- @DefaultValueSpecification@ is a list of default values for a
-- constituent sub slot in a composite slot. Default values are used when
-- Amazon Lex hasn\'t determined a value for a slot. You can specify
-- default values from context variables, session attributes, and defined
-- values. This is similar to @DefaultValueSpecification@ for slots.
--
-- @PromptSpecification@ is the prompt that Amazon Lex uses to elicit the
-- sub slot value from the user. This is similar to @PromptSpecification@
-- for slots.
--
-- /See:/ 'newSubSlotValueElicitationSetting' smart constructor.
data SubSlotValueElicitationSetting = SubSlotValueElicitationSetting'
  { -- | If you know a specific pattern that users might respond to an Amazon Lex
    -- request for a sub slot value, you can provide those utterances to
    -- improve accuracy. This is optional. In most cases Amazon Lex is capable
    -- of understanding user utterances. This is similar to @SampleUtterances@
    -- for slots.
    sampleUtterances :: Prelude.Maybe [SampleUtterance],
    waitAndContinueSpecification :: Prelude.Maybe WaitAndContinueSpecification,
    defaultValueSpecification :: Prelude.Maybe SlotDefaultValueSpecification,
    promptSpecification :: PromptSpecification
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubSlotValueElicitationSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sampleUtterances', 'subSlotValueElicitationSetting_sampleUtterances' - If you know a specific pattern that users might respond to an Amazon Lex
-- request for a sub slot value, you can provide those utterances to
-- improve accuracy. This is optional. In most cases Amazon Lex is capable
-- of understanding user utterances. This is similar to @SampleUtterances@
-- for slots.
--
-- 'waitAndContinueSpecification', 'subSlotValueElicitationSetting_waitAndContinueSpecification' - Undocumented member.
--
-- 'defaultValueSpecification', 'subSlotValueElicitationSetting_defaultValueSpecification' - Undocumented member.
--
-- 'promptSpecification', 'subSlotValueElicitationSetting_promptSpecification' - Undocumented member.
newSubSlotValueElicitationSetting ::
  -- | 'promptSpecification'
  PromptSpecification ->
  SubSlotValueElicitationSetting
newSubSlotValueElicitationSetting
  pPromptSpecification_ =
    SubSlotValueElicitationSetting'
      { sampleUtterances =
          Prelude.Nothing,
        waitAndContinueSpecification =
          Prelude.Nothing,
        defaultValueSpecification = Prelude.Nothing,
        promptSpecification = pPromptSpecification_
      }

-- | If you know a specific pattern that users might respond to an Amazon Lex
-- request for a sub slot value, you can provide those utterances to
-- improve accuracy. This is optional. In most cases Amazon Lex is capable
-- of understanding user utterances. This is similar to @SampleUtterances@
-- for slots.
subSlotValueElicitationSetting_sampleUtterances :: Lens.Lens' SubSlotValueElicitationSetting (Prelude.Maybe [SampleUtterance])
subSlotValueElicitationSetting_sampleUtterances = Lens.lens (\SubSlotValueElicitationSetting' {sampleUtterances} -> sampleUtterances) (\s@SubSlotValueElicitationSetting' {} a -> s {sampleUtterances = a} :: SubSlotValueElicitationSetting) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
subSlotValueElicitationSetting_waitAndContinueSpecification :: Lens.Lens' SubSlotValueElicitationSetting (Prelude.Maybe WaitAndContinueSpecification)
subSlotValueElicitationSetting_waitAndContinueSpecification = Lens.lens (\SubSlotValueElicitationSetting' {waitAndContinueSpecification} -> waitAndContinueSpecification) (\s@SubSlotValueElicitationSetting' {} a -> s {waitAndContinueSpecification = a} :: SubSlotValueElicitationSetting)

-- | Undocumented member.
subSlotValueElicitationSetting_defaultValueSpecification :: Lens.Lens' SubSlotValueElicitationSetting (Prelude.Maybe SlotDefaultValueSpecification)
subSlotValueElicitationSetting_defaultValueSpecification = Lens.lens (\SubSlotValueElicitationSetting' {defaultValueSpecification} -> defaultValueSpecification) (\s@SubSlotValueElicitationSetting' {} a -> s {defaultValueSpecification = a} :: SubSlotValueElicitationSetting)

-- | Undocumented member.
subSlotValueElicitationSetting_promptSpecification :: Lens.Lens' SubSlotValueElicitationSetting PromptSpecification
subSlotValueElicitationSetting_promptSpecification = Lens.lens (\SubSlotValueElicitationSetting' {promptSpecification} -> promptSpecification) (\s@SubSlotValueElicitationSetting' {} a -> s {promptSpecification = a} :: SubSlotValueElicitationSetting)

instance Core.FromJSON SubSlotValueElicitationSetting where
  parseJSON =
    Core.withObject
      "SubSlotValueElicitationSetting"
      ( \x ->
          SubSlotValueElicitationSetting'
            Prelude.<$> ( x Core..:? "sampleUtterances"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "waitAndContinueSpecification")
            Prelude.<*> (x Core..:? "defaultValueSpecification")
            Prelude.<*> (x Core..: "promptSpecification")
      )

instance
  Prelude.Hashable
    SubSlotValueElicitationSetting
  where
  hashWithSalt
    _salt
    SubSlotValueElicitationSetting' {..} =
      _salt `Prelude.hashWithSalt` sampleUtterances
        `Prelude.hashWithSalt` waitAndContinueSpecification
        `Prelude.hashWithSalt` defaultValueSpecification
        `Prelude.hashWithSalt` promptSpecification

instance
  Prelude.NFData
    SubSlotValueElicitationSetting
  where
  rnf SubSlotValueElicitationSetting' {..} =
    Prelude.rnf sampleUtterances
      `Prelude.seq` Prelude.rnf waitAndContinueSpecification
      `Prelude.seq` Prelude.rnf defaultValueSpecification
      `Prelude.seq` Prelude.rnf promptSpecification

instance Core.ToJSON SubSlotValueElicitationSetting where
  toJSON SubSlotValueElicitationSetting' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sampleUtterances" Core..=)
              Prelude.<$> sampleUtterances,
            ("waitAndContinueSpecification" Core..=)
              Prelude.<$> waitAndContinueSpecification,
            ("defaultValueSpecification" Core..=)
              Prelude.<$> defaultValueSpecification,
            Prelude.Just
              ("promptSpecification" Core..= promptSpecification)
          ]
      )
