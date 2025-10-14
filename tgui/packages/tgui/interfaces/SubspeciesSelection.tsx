import {
  Box,
  Button,
  Dimmer,
  Dropdown,
  ImageButton,
  Input,
  LabeledList,
  ProgressBar,
  Section,
  Stack,
  Tabs,
} from 'tgui-core/components';
import { createSearch } from 'tgui-core/string';

import { useBackend } from '../backend';
import { Window } from '../layouts';

type Data = {

};

export const Loadout = (props) => {
  const { act, data } = useBackend<Data>();

  return (
    <Window width={1105} height={650}>
      <Window.Content scrollable>

      </Window.Content>
    </Window>
  )
